import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class ReportService {
  static const String _reportsKey = 'user_reports';
  
  // 获取所有举报记录
  static Future<Map<String, String>> getReportedPosts() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 尝试读取新格式（JSON String）
    try {
      final reportsJson = prefs.getString(_reportsKey);
      if (reportsJson != null) {
        final decoded = json.decode(reportsJson);
        if (decoded is Map) {
          return Map<String, String>.from(decoded);
        }
      }
    } catch (e) {
      // 如果读取失败，继续尝试旧格式
    }
    
    // 尝试读取旧格式（StringList），并迁移到新格式
    try {
      final oldReports = prefs.getStringList(_reportsKey);
      if (oldReports != null && oldReports.isNotEmpty) {
        // 将旧格式迁移到新格式（没有原因，使用默认值）
        final Map<String, String> newReports = {};
        for (var postId in oldReports) {
          newReports[postId] = 'Reported';
        }
        // 保存为新格式（会覆盖旧格式）
        final reportsJson = json.encode(newReports);
        await prefs.setString(_reportsKey, reportsJson);
        return newReports;
      }
    } catch (e) {
      // 如果都失败了，返回空 Map
    }
    
    return {};
  }
  
  // 检查是否已举报
  static Future<bool> isReported(String postId) async {
    final reportedPosts = await getReportedPosts();
    return reportedPosts.containsKey(postId);
  }
  
  // 获取举报原因
  static Future<String?> getReportReason(String postId) async {
    final reportedPosts = await getReportedPosts();
    return reportedPosts[postId];
  }
  
  // 举报帖子（带原因）
  static Future<bool> reportPost(String postId, String reason) async {
    final prefs = await SharedPreferences.getInstance();
    final reportedPosts = await getReportedPosts();
    
    reportedPosts[postId] = reason;
    final reportsJson = json.encode(reportedPosts);
    return await prefs.setString(_reportsKey, reportsJson);
  }
}

