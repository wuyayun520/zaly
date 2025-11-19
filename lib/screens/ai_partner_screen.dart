import 'package:flutter/material.dart';
import '../services/ai_chat_service.dart';

class AIPartnerScreen extends StatefulWidget {
  const AIPartnerScreen({super.key});

  @override
  State<AIPartnerScreen> createState() => _AIPartnerScreenState();
}

class _AIPartnerScreenState extends State<AIPartnerScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  bool _showInitialCard = true;

  final List<Map<String, dynamic>> _messages = [];

  final List<String> _suggestions = [
    'Share a happy thought.',
    'What\'s good music for popping?',
    'How to dance more smoothly?',
  ];

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _sendMessage(String text) async {
    if (text.trim().isEmpty || _isLoading) return;

    setState(() {
      _isLoading = true;
      _showInitialCard = false;
      _messages.add({
        'text': text,
        'isMe': true,
        'timestamp': DateTime.now(),
      });
    });

    _textController.clear();
    _scrollToBottom();

    try {
      // 构建对话历史
      List<Map<String, String>> conversationHistory = [];
      for (var msg in _messages.where((m) => !m['isMe'] || m != _messages.last)) {
        conversationHistory.add({
          'role': msg['isMe'] ? 'user' : 'assistant',
          'content': msg['text'] as String,
        });
      }

      // 调用AI API
      final aiResponse = await AIChatService.sendMessage(text, conversationHistory);

      if (mounted) {
        setState(() {
          _messages.add({
            'text': aiResponse,
            'isMe': false,
            'timestamp': DateTime.now(),
          });
          _isLoading = false;
        });
        _scrollToBottom();
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _messages.add({
            'text': 'Sorry, I encountered an error. Please try again later.',
            'isMe': false,
            'timestamp': DateTime.now(),
            'isError': true,
          });
          _isLoading = false;
        });
        _scrollToBottom();
      }
    }
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
       
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
          'AI Partner',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 0.3,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // 背景图片
          Image.asset(
            'assets/zaly_ai_partner_bg.webp',
            fit: BoxFit.contain,
          ),
          SafeArea(
            child: Column(
              children: [
                // 聊天内容区域
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 16,
                    ),
                    child: Column(
                      children: [
                        // 初始卡片（只在没有消息时显示）
                        if (_showInitialCard) ...[
                          Image.asset(
                            'assets/zaly_ai_partner_card.webp',
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 24),
                          // 问题选项
                          ..._suggestions.map((suggestion) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: GestureDetector(
                                  onTap: () => _sendMessage(suggestion),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 14,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: const Color(0xFFA496FA).withOpacity(0.3),
                                        width: 1.5,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 8,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            suggestion,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                        // 聊天消息列表
                        if (_messages.isNotEmpty) ...[
                          const SizedBox(height: 16),
                          ..._messages.map((msg) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Align(
                                  alignment: msg['isMe']
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment: msg['isMe']
                                        ? MainAxisAlignment.end
                                        : MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      if (!msg['isMe']) ...[
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.lightBlue.withOpacity(0.3),
                                                Colors.pink.withOpacity(0.3),
                                              ],
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.smart_toy_rounded,
                                            color: Colors.white,
                                            size: 22,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                      ],
                                      Flexible(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 12,
                                          ),
                                          decoration: BoxDecoration(
                                            gradient: msg['isMe']
                                                ? const LinearGradient(
                                                    colors: [
                                                      Color(0xFFA496FA),
                                                      Color(0xFFFF6B9D),
                                                    ],
                                                  )
                                                : null,
                                            color: msg['isMe']
                                                ? null
                                                : Colors.white.withOpacity(0.95),
                                            borderRadius: BorderRadius.only(
                                              topLeft: const Radius.circular(20),
                                              topRight: const Radius.circular(20),
                                              bottomLeft: msg['isMe']
                                                  ? const Radius.circular(20)
                                                  : const Radius.circular(4),
                                              bottomRight: msg['isMe']
                                                  ? const Radius.circular(4)
                                                  : const Radius.circular(20),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: msg['isMe']
                                                    ? const Color(0xFFA496FA)
                                                        .withOpacity(0.3)
                                                    : Colors.black.withOpacity(0.1),
                                                blurRadius: 8,
                                                offset: const Offset(0, 2),
                                              ),
                                            ],
                                          ),
                                          child: Text(
                                            msg['text'] as String,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: msg['isMe']
                                                  ? Colors.white
                                                  : Colors.black87,
                                              height: 1.4,
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (msg['isMe']) ...[
                                        const SizedBox(width: 8),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFFA496FA),
                                                Color(0xFFFF6B9D),
                                              ],
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.person,
                                            color: Colors.white,
                                            size: 22,
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              )),
                          // 加载指示器
                          if (_isLoading)
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.lightBlue.withOpacity(0.3),
                                            Colors.pink.withOpacity(0.3),
                                          ],
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.smart_toy_rounded,
                                        color: Colors.white,
                                        size: 22,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.95),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor: AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA496FA),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ],
                    ),
                  ),
                ),
                // 输入栏
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.white.withOpacity(0.95),
                      ],
                    ),
                  ),
                  child: SafeArea(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFA496FA),
                            Color(0xFFFF6B9D),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFA496FA).withOpacity(0.4),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          
                          Expanded(
                            child: TextField(
                              controller: _textController,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Do you have any questions for me~',
                                hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 15,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                              ),
                              onSubmitted: (_) {
                                if (_textController.text.trim().isNotEmpty) {
                                  _sendMessage(_textController.text.trim());
                                }
                              },
                            ),
                          ),
                          IconButton(
                            icon: Image.asset(
                              'assets/zaly_send.webp',
                              width: 32,
                              height: 32,
                              fit: BoxFit.contain,
                            ),
                            onPressed: () {
                              if (_textController.text.trim().isNotEmpty) {
                                _sendMessage(_textController.text.trim());
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

