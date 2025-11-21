import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class VelvySubscriptionsPage extends StatefulWidget {
  final int initialIndex;
  const VelvySubscriptionsPage({super.key, this.initialIndex = 0});

  @override
  State<VelvySubscriptionsPage> createState() => _VelvySubscriptionsPageState();
}

class _VelvySubscriptionsPageState extends State<VelvySubscriptionsPage> with TickerProviderStateMixin {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  bool _isLoading = false; // 改为false，不在初始化时加载
  bool _purchasePending = false;
  int _selectedIndex = 0;
  bool _isVelvyPremium = false;
  DateTime? _velvyPremiumExpiry;
  DateTime? _lastSnackBarTime;
  bool _productsLoaded = false; // 新增：标记商品是否已加载

  // 订阅商品配置
  final List<_VelvySubscriptionPlan> _velvyPlans = [
    _VelvySubscriptionPlan(
      title: '12.99',
      subTitle: 'Per week',
      total: 'Total \$12.99',
      desc: '+7 Days ',
      productId: 'VelvyWeekVIP',
      popular: false,
    ),
    _VelvySubscriptionPlan(
      title: '49.99',
      subTitle: 'Per month',
      total: 'Total \$49.99',
      desc: '+30 Days ',
      productId: 'VelvyMonthVIP',
      popular: true,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
    
    final Stream<List<PurchaseDetails>> purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen(_listenToPurchaseUpdated, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      debugPrint("Error in IAP Stream: $error");
    });
    // 移除自动初始化内购，改为延迟加载
    _loadVelvyPremiumStatus();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  // 新增：延迟加载商品信息，只在用户需要购买时才加载
  Future<void> _loadProductsIfNeeded() async {
    if (_productsLoaded) {
      return; // 如果已经加载过，直接返回
    }
    
    setState(() {
      _isLoading = true;
    });
    
    final bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      setState(() {
        _isLoading = false;
      });
      _showSnackBar("Store not available");
      return;
    }
    
    final Set<String> productIds = _velvyPlans.map((e) => e.productId).toSet();
    try {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      setState(() {
        _products = response.productDetails;
        _isLoading = false;
        _productsLoaded = true; // 标记为已加载
      });
      
      if (response.productDetails.isEmpty) {
        _showSnackBar("No subscription products available");
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showSnackBar("Failed to load subscription products: $e");
    }
  }

  Future<void> _loadVelvyPremiumStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isVelvyPremium = prefs.getBool('isVelvyPremium') ?? prefs.getBool('isVip') ?? false;
      final expiryStr = prefs.getString('velvyPremiumExpiry') ?? prefs.getString('vipExpiry');
      _velvyPremiumExpiry = expiryStr != null ? DateTime.tryParse(expiryStr) : null;
    });
  }

  Future<void> _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
      debugPrint('Purchase status: ${purchaseDetails.status}');
      
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
          debugPrint('Successful purchase/restore: ${purchaseDetails.productID}');
          await _handleSuccessfulPurchase(purchaseDetails);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          setState(() {
            _purchasePending = false;
          });
          _showSnackBar("Purchase was canceled");
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }

  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    setState(() {
      _purchasePending = false;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isVelvyPremium', true);
    // 兼容旧数据
    await prefs.setBool('isVip', true);
    // 计算有效期和Premium类型
    DateTime now = DateTime.now();
    DateTime expiry;
    String premiumType;
    if (purchaseDetails.productID == 'VelvyWeekVIP') {
      expiry = now.add(const Duration(days: 7));
      premiumType = 'weekly';
    } else if (purchaseDetails.productID == 'VelvyMonthVIP') {
      expiry = now.add(const Duration(days: 30));
      premiumType = 'monthly';
    } else {
      expiry = now;
      premiumType = 'unknown';
    }
    await prefs.setString('velvyPremiumExpiry', expiry.toIso8601String());
    await prefs.setString('velvyPremiumType', premiumType);
    // 兼容旧数据
    await prefs.setString('vipExpiry', expiry.toIso8601String());
    await prefs.setString('vip_type', premiumType);
          _showSnackBar("Velvy Premium activated!");
    await _loadVelvyPremiumStatus();
  }

  void _showSnackBar(String msg) {
    final now = DateTime.now();
    if (_lastSnackBarTime != null && now.difference(_lastSnackBarTime!).inSeconds < 3) {
      return;
    }
    _lastSnackBarTime = now;
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

  Future<void> _processVelvyPurchase() async {
    // 在购买前确保商品已加载
    if (!_productsLoaded) {
      await _loadProductsIfNeeded();
    }
    
    final plan = _velvyPlans[_selectedIndex];
    final ProductDetails? product = _products.firstWhereOrNull((p) => p.id == plan.productId);
    if (product == null) {
      _showSnackBar("Product not available");
      return;
    }
    setState(() {
      _purchasePending = true;
    });
    try {
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
      await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      setState(() {
        _purchasePending = false;
      });
      _showSnackBar("Error starting purchase: $e");
    }
  }

  Future<void> _restoreVelvyPurchases() async {
    // 在恢复前确保商品已加载
    if (!_productsLoaded) {
      await _loadProductsIfNeeded();
    }
    
    setState(() {
      _purchasePending = true;
    });
    
    try {
      debugPrint('Starting restore Velvy purchases...');
      await _inAppPurchase.restorePurchases();
      _showSnackBar("Restoring purchases... Please wait.");
      
      // 给一些时间让恢复过程完成
      await Future.delayed(const Duration(seconds: 2));
      
      // 重新加载Premium状态以检查是否有恢复的购买
      await _loadVelvyPremiumStatus();
      
      if (_isVelvyPremium) {
        _showSnackBar("Purchases restored successfully! Velvy Premium activated.");
      } else {
        _showSnackBar("No previous purchases found to restore.");
      }
    } catch (e) {
      debugPrint('Error restoring Velvy purchases: $e');
      _showSnackBar("Error restoring purchases: $e");
    } finally {
      setState(() {
        _purchasePending = false;
      });
    }
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      _showSnackBar('Could not launch $url');
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
          'Velvy Premium',
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
                        // Premium状态卡片（如果已激活）
                        if (_isVelvyPremium && _velvyPremiumExpiry != null) ...[
                          _buildVelvyPremiumStatusCard(),
                          const SizedBox(height: 32),
                        ],
                        
                        // 标题
                        const Text(
                          'Choose Your Plan',
                          style: TextStyle(
                            color: Color(0xffFF6B9D),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 24),
                        
                        // 订阅计划卡片
                        _buildVelvySubscriptionCards(),
                        const SizedBox(height: 32),
                        
                        // Premium权益标题
                        const Text(
                          'Premium Benefits',
                          style: TextStyle(
                            color: Color(0xffFF6B9D),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        
                        // Premium权益列表
                        _buildVelvyBenefitsList(),
                        const SizedBox(height: 32),
                        
                        // 购买按钮
                        _buildVelvyPurchaseButton(),
                        const SizedBox(height: 16),
                        
                        // 恢复购买按钮
                        _buildVelvyRestoreButton(),
                        const SizedBox(height: 24),
                        
                        // 协议链接
                        _buildLegalSection(),
                        SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildVelvyPremiumStatusCard() {
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
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.25),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(
              Icons.workspace_premium,
              color: Colors.white,
              size: 32,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Velvy Premium Active',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Expires: ${_velvyPremiumExpiry!.year}-${_velvyPremiumExpiry!.month.toString().padLeft(2, '0')}-${_velvyPremiumExpiry!.day.toString().padLeft(2, '0')}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVelvySubscriptionCards() {
    return Column(
      children: _velvyPlans.asMap().entries.map((entry) {
        final index = entry.key;
        final plan = entry.value;
        final isSelected = index == _selectedIndex;
        
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(20),
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
              child: Row(
                children: [
                  // 左侧：价格和时长
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$${plan.title}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          plan.subTitle,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // 右侧：选中标记
                  if (isSelected)
                    Container(
                      width: 28,
                      height: 28,
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
                        size: 18,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

   Widget _buildVelvyBenefitsList() {
    final List<_VelvyBenefit> velvyBenefits = _selectedIndex == 0 ? [
      // 周订阅权益
      _VelvyBenefit(icon: Icons.healing, text: 'Access to Healing Center tools'),
      _VelvyBenefit(icon: Icons.edit_note, text: 'Mood Journal & Analytics'),
      _VelvyBenefit(icon: Icons.air, text: 'Breathing Exercises'),
      _VelvyBenefit(icon: Icons.music_note, text: 'Meditation Music'),
      _VelvyBenefit(icon: Icons.smart_toy, text: 'AI Partner Chat'),
      _VelvyBenefit(icon: Icons.library_books, text: 'Wellness Library'),
    ] : [
      // 月订阅权益（包含周订阅的所有权益，加上额外权益）
      _VelvyBenefit(icon: Icons.healing, text: 'Access to Healing Center tools'),
      _VelvyBenefit(icon: Icons.edit_note, text: 'Mood Journal & Analytics'),
      _VelvyBenefit(icon: Icons.air, text: 'Breathing Exercises'),
      _VelvyBenefit(icon: Icons.music_note, text: 'Meditation Music'),
      _VelvyBenefit(icon: Icons.smart_toy, text: 'AI Partner Chat'),
      _VelvyBenefit(icon: Icons.library_books, text: 'Wellness Library'),
      _VelvyBenefit(icon: Icons.edit, text: 'Share Story feature'),
    ];

    return Column(
      children: velvyBenefits.map((benefit) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white.withOpacity(0.2),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFFF6B9D).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                benefit.icon,
                color: const Color(0xFFFF6B9D),
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                benefit.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildVelvyPurchaseButton() {
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
          onTap: _purchasePending ? null : _processVelvyPurchase,
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
                    'Start Velvy Premium',
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

  Widget _buildVelvyRestoreButton() {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.3),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: _purchasePending ? null : _restoreVelvyPurchases,
          child: Center(
            child: _purchasePending
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : const Text(
                    'Restore Purchases',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildLegalSection() {
    return Column(
      children: [
        // 协议链接
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => _launchURL('https://www.apple.com/legal/internet-services/terms/site.html'),
              child: const Text(
                'EULA',
                style: TextStyle(
                  color: Color(0xffFF6B9D),
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _launchURL('https://www.privacypolicies.com/live/94509af9-b790-4000-ba2a-d5f036919343'),
              child: const Text(
                'Privacy Policy',
                style: TextStyle(
                  color: Color(0xffFF6B9D),
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        
        // 退订说明
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.3),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'How to Cancel Subscription',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'To cancel your subscription:',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '1. Open Settings on your iPhone/iPad',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                ),
              ),
              Text(
                '2. Tap your name at the top',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                ),
              ),
              Text(
                '3. Tap "Subscriptions"',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                ),
              ),
              Text(
                '4. Find "Velvy Premium" and tap it',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                ),
              ),
              Text(
                '5. Tap "Cancel Subscription"',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Your subscription will remain active until the end of the current billing period.',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _VelvySubscriptionPlan {
  final String title;
  final String subTitle;
  final String total;
  final String desc;
  final String productId;
  final bool popular;
  const _VelvySubscriptionPlan({
    required this.title,
    required this.subTitle,
    required this.total,
    required this.desc,
    required this.productId,
    required this.popular,
  });
}


extension FirstWhereOrNullExtension<E> on List<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

class _VelvyBenefit {
  final IconData icon;
  final String text;
  const _VelvyBenefit({required this.icon, required this.text});
}