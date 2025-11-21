import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';

class VelvyProduct {
  final String amountStr;
  final String productId;
  final double price;
  int get amount => int.tryParse(amountStr) ?? 0;
  const VelvyProduct(this.amountStr, this.productId, this.price);
}


class VelvyProducts {
  static const List<VelvyProduct> all = [
    VelvyProduct('32', 'Velvy', 0.99),
    VelvyProduct('60', 'Velvy1', 1.99),
    VelvyProduct('96', 'Velvy2', 2.99),
    VelvyProduct('155', 'Velvy4', 4.99),
    VelvyProduct('189', 'Velvy5', 5.99),
    VelvyProduct('359', 'Velvy9', 9.99),
    VelvyProduct('729', 'Velvy19', 19.99),
    VelvyProduct('1055', 'Velvy29', 29.99),
    VelvyProduct('1869', 'Velvy49', 49.99),
    VelvyProduct('3799', 'Velvy99', 99.99),
    VelvyProduct('4233', 'Velvy129', 129.99),
    VelvyProduct('5999', 'Velvy159', 159.99),
    VelvyProduct('9059', 'Velvy239', 239.99),
  ];
}

class InAppPurchasesPage extends StatefulWidget {
  const InAppPurchasesPage({super.key});

  @override
  State<InAppPurchasesPage> createState() => _InAppPurchasesPageState();
}

class _InAppPurchasesPageState extends State<InAppPurchasesPage> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  bool _isLoading = true;
  bool _purchasePending = false;
  int _velvyCoins = 0;
  final Set<String> _processedPurchases = {}; // 跟踪已处理的购买
  bool _isInitialized = false; // 标记是否已初始化
  int _selectedProductIndex = 0; // 跟踪选中的商品索引

  List<VelvyProduct> get _velvyProducts => VelvyProducts.all;

  @override
  void initState() {
    super.initState();
    
    final Stream<List<PurchaseDetails>> purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen(_listenToPurchaseUpdated, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      debugPrint("Error in IAP Stream: $error");
    });
    _loadVelvyCoins();
    _initInAppPurchase();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _loadVelvyCoins() async {
    final prefs = await SharedPreferences.getInstance();
    int coins = prefs.getInt('velvyCoins') ?? 0;
    debugPrint('Loading Velvy coins: $coins');
    setState(() {
      _velvyCoins = coins;
      // 如果还没有初始化完成，在这里也设置标志
      if (!_isInitialized) {
        _isInitialized = true;
        debugPrint('Initialized from _loadVelvyCoins');
      }
    });
  }

  Future<void> _saveVelvyCoins(int amount) async {
    final prefs = await SharedPreferences.getInstance();
    debugPrint('Saving Velvy coins: current=$_velvyCoins, adding=$amount, new=${_velvyCoins + amount}');
    debugPrint('Call stack: ${StackTrace.current}');
    setState(() {
      _velvyCoins += amount;
    });
    await prefs.setInt('velvyCoins', _velvyCoins);
  }

  Future<void> _initInAppPurchase() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    debugPrint('Store availability: $isAvailable');
    
    if (!isAvailable) {
      setState(() {
        _isLoading = false;
        _isInitialized = true; // 即使出错也标记为已初始化
      });
      return;
    }
    
    final Set<String> productIds = _velvyProducts.map((e) => e.productId).toSet();
    debugPrint('Querying products: $productIds');
    
    try {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      debugPrint('Found ${response.productDetails.length} products');
      debugPrint('Product IDs: ${response.productDetails.map((p) => p.id).toList()}');
      
      setState(() {
        _products = response.productDetails;
        _isLoading = false;
        _isInitialized = true; // 标记初始化完成
      });
      debugPrint('InAppPurchase initialized successfully');
      
      if (response.productDetails.isEmpty) {
        // _showSnackBar("No products available");
      }
    } catch (e) {
      debugPrint('Error loading products: $e');
      setState(() {
        _isLoading = false;
        _isInitialized = true; // 即使出错也标记为已初始化
      });
      _showSnackBar("Failed to load products: $e");
    }
  }

  Future<void> _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    // 如果页面还没有初始化完成，忽略购买更新
    if (!_isInitialized) {
      debugPrint('Ignoring purchase updates during initialization');
      return;
    }
    
    for (var purchaseDetails in purchaseDetailsList) {
      debugPrint('Purchase status: ${purchaseDetails.status} for product: ${purchaseDetails.productID}');
      
      if (purchaseDetails.status == PurchaseStatus.pending) {
        setState(() {
          _purchasePending = true;
        });
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          setState(() {
            _purchasePending = false;
          });
          _showSnackBar("Purchase failed: ${purchaseDetails.error?.message ?? 'Unknown error'}");
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                   purchaseDetails.status == PurchaseStatus.restored) {
          // 处理新购买和恢复的购买
          _handleSuccessfulPurchase(purchaseDetails);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          setState(() {
            _purchasePending = false;
          });
        }
        // 移除重复的completePurchase调用，现在在_handleSuccessfulPurchase中处理
      }
    }
  }

  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    // 检查是否已经处理过这个购买
    String purchaseKey = '${purchaseDetails.productID}_${purchaseDetails.purchaseID}_${purchaseDetails.status}';
    if (_processedPurchases.contains(purchaseKey)) {
      debugPrint('Purchase already processed: $purchaseKey');
      return;
    }
    
    // 添加到已处理列表
    _processedPurchases.add(purchaseKey);
    
    debugPrint('Handling successful purchase: ${purchaseDetails.productID} (${purchaseDetails.status})');
    debugPrint('Available product IDs: ${_velvyProducts.map((p) => p.productId).toList()}');
    
    setState(() {
      _purchasePending = false;
    });
    
    final product = _velvyProducts.firstWhere(
      (e) => e.productId == purchaseDetails.productID, 
      orElse: () {
        debugPrint('Product not found in configuration: ${purchaseDetails.productID}');
        return VelvyProduct('', '', 0);
      }
    );
    
    if (product.amount > 0) {
      debugPrint('Processing purchase: ${product.amount} coins for product ${purchaseDetails.productID}');
      await _saveVelvyCoins(product.amount);
      _showSnackBar("Purchase successful! +${product.amount} Velvy Coins");
    } else {
      debugPrint('Product amount is 0 or product not found: ${purchaseDetails.productID}');
    }
    
    // 总是清除订单
    debugPrint('Completing purchase: ${purchaseDetails.productID}');
    await _inAppPurchase.completePurchase(purchaseDetails);
  }

  void _showSnackBar(String msg) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(msg),
          backgroundColor: const Color(0xFF2E7D7A),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
    }
  }

  Future<void> _processPurchase(String productId) async {
    debugPrint('Attempting to purchase product: $productId');
    debugPrint('Available products: ${_products.map((p) => p.id).toList()}');
    
    final ProductDetails? product = _products.firstWhereOrNull((p) => p.id == productId);
    if (product == null) {
      debugPrint('Product not found: $productId');
      _showSnackBar("Product not available");
      return;
    }
    
    debugPrint('Product found: ${product.id} - ${product.title} - ${product.price}');
    
    setState(() {
      _purchasePending = true;
    });
    
    try {
      // 添加短暂延迟，确保系统准备好
      await Future.delayed(const Duration(milliseconds: 500));
      
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
      debugPrint('Starting purchase for: ${product.id}');
      await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
      debugPrint('Purchase initiated successfully');
    } catch (e) {
      debugPrint('Error starting purchase: $e');
      setState(() {
        _purchasePending = false;
      });
      _showSnackBar("Error starting purchase: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.5),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: const Text(
          'Wallet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/zaly_allbg.webp',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: _isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Color(0xFFFF6B9D),
                      strokeWidth: 3,
                    ),
                  )
                : SingleChildScrollView(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        // 钱包余额卡片
                        _buildWalletBalanceCard(),
                        const SizedBox(height: 32),
                        
                        // 选择充值金额标题
                        const Text(
                          'Select top-up amount',
                          style: TextStyle(
                            color: Color(0xFFFF6B9D),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        
                        // 商品网格
                        _buildProductGrid(),
                        const SizedBox(height: 32),
                        
                        // 充值按钮
                        _buildRechargeButton(),
                        SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildWalletBalanceCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFF6B9D), Color(0xFFA496FA)], // 粉色到紫色渐变
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF6B9D).withOpacity(0.4),
            blurRadius: 20,
            offset: const Offset(0, 10),
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wallet balance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '$_velvyCoins',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // 金币图标
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.25),
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                'assets/velvy_me_coin.webp',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.monetization_on,
                    size: 40,
                    color: Colors.white,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9, // 减小宽高比，增加高度
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: _velvyProducts.length,
      itemBuilder: (context, index) {
        final item = _velvyProducts[index];
        final product = _products.firstWhereOrNull((p) => p.id == item.productId);
        final priceStr = product?.price != null 
            ? product!.price.replaceAll('US\$', '\$')
            : '\$${item.price.toStringAsFixed(2)}';
        
        return _buildProductCard(item, priceStr, index == _selectedProductIndex);
      },
    );
  }

  Widget _buildProductCard(VelvyProduct item, String priceStr, bool isSelected) {
    return GestureDetector(
      onTap: _purchasePending ? null : () {
        // 切换选中状态
        setState(() {
          _selectedProductIndex = _velvyProducts.indexOf(item);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: isSelected 
              ? LinearGradient(
                  colors: [
                    const Color(0xFFFF6B9D).withOpacity(0.3),
                    const Color(0xFFA496FA).withOpacity(0.3),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.2),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius: BorderRadius.circular(20),
          border: isSelected 
              ? Border.all(color: const Color(0xFFFF6B9D), width: 2.5)
              : Border.all(color: Colors.white.withOpacity(0.2), width: 1.5),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: const Color(0xFFFF6B9D).withOpacity(0.4),
                blurRadius: 15,
                offset: const Offset(0, 5),
                spreadRadius: 1,
              ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            // 主要内容区域
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 金币图标
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/velvy_me_coin.webp',
                          width: 36,
                          height: 36,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.monetization_on,
                              size: 32,
                              color: Color(0xFFFFD700),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${item.amount}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Coins',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      priceStr,
                      style: TextStyle(
                        color: isSelected ? const Color(0xFFFF6B9D) : const Color(0xFFFFD700),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            // 选中标记
            if (isSelected)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF6B9D),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFF6B9D),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildRechargeButton() {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFF6B9D), Color(0xFFA496FA)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF6B9D).withOpacity(0.4),
            blurRadius: 20,
            offset: const Offset(0, 10),
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(28),
          onTap: _purchasePending ? null : () {
            // 使用选中的商品进行购买
            if (_selectedProductIndex < _velvyProducts.length) {
              final selectedProduct = _velvyProducts[_selectedProductIndex];
              _processPurchase(selectedProduct.productId);
            }
          },
          child: Center(
            child: _purchasePending
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : const Text(
                    'Recharge',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

extension FirstWhereOrNullExtension<E> on List<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}