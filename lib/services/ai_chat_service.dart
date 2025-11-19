import 'dart:convert';
import 'package:http/http.dart' as http;

class AIChatService {
  static const String _apiKey = '6442ac977da145bd8ac48773e54687dc.1R43v2rGK6A8VA6C';
  static const String _apiUrl = 'https://open.bigmodel.cn/api/paas/v4/chat/completions';
  static const String _model = 'glm-4-flash';

  static const String _systemPrompt = '''You are an emotional support AI companion. Your role is to help users with their emotional troubles and provide comfort, understanding, and guidance. Always respond in English with empathy, warmth, and care. Be supportive, non-judgmental, and encouraging. Help users process their feelings and offer gentle advice when appropriate.''';

  static Future<String> sendMessage(String userMessage, List<Map<String, String>> conversationHistory) async {
    try {
      // 构建消息列表
      List<Map<String, String>> messages = [
        {
          'role': 'system',
          'content': _systemPrompt,
        },
      ];

      // 添加历史对话
      for (var msg in conversationHistory) {
        messages.add({
          'role': msg['role']!,
          'content': msg['content']!,
        });
      }

      // 添加当前用户消息
      messages.add({
        'role': 'user',
        'content': userMessage,
      });

      // 构建请求体
      final requestBody = {
        'model': _model,
        'messages': messages,
        'temperature': 0.7,
        'max_tokens': 1000,
      };

      // 发送请求
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: json.encode(requestBody),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        
        if (responseData['choices'] != null && 
            responseData['choices'].isNotEmpty &&
            responseData['choices'][0]['message'] != null) {
          final aiMessage = responseData['choices'][0]['message']['content'] as String;
          return aiMessage.trim();
        } else {
          throw Exception('Invalid response format from AI API');
        }
      } else {
        throw Exception('API request failed with status: ${response.statusCode}, body: ${response.body}');
      }
    } catch (e) {
      print('Error calling AI API: $e');
      rethrow;
    }
  }
}

