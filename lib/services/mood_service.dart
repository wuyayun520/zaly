import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/mood_entry.dart';

class MoodService {
  static const String _moodEntriesKey = 'mood_entries';

  static Future<List<MoodEntry>> getMoodEntries() async {
    final prefs = await SharedPreferences.getInstance();
    final String? entriesJson = prefs.getString(_moodEntriesKey);
    
    if (entriesJson == null) {
      return [];
    }
    
    final List<dynamic> entriesList = json.decode(entriesJson);
    return entriesList.map((e) => MoodEntry.fromJson(e)).toList();
  }

  static Future<void> saveMoodEntry(MoodEntry entry) async {
    final entries = await getMoodEntries();
    entries.insert(0, entry);
    await _saveEntries(entries);
  }

  static Future<void> deleteMoodEntry(String id) async {
    final entries = await getMoodEntries();
    entries.removeWhere((e) => e.id == id);
    await _saveEntries(entries);
  }

  static Future<void> updateMoodEntry(MoodEntry entry) async {
    final entries = await getMoodEntries();
    final index = entries.indexWhere((e) => e.id == entry.id);
    if (index != -1) {
      entries[index] = entry;
      await _saveEntries(entries);
    }
  }

  static Future<void> _saveEntries(List<MoodEntry> entries) async {
    final prefs = await SharedPreferences.getInstance();
    final entriesJson = json.encode(entries.map((e) => e.toJson()).toList());
    await prefs.setString(_moodEntriesKey, entriesJson);
  }

  static Future<List<MoodEntry>> getMoodEntriesForDateRange(DateTime start, DateTime end) async {
    final entries = await getMoodEntries();
    return entries.where((e) {
      return e.timestamp.isAfter(start) && e.timestamp.isBefore(end);
    }).toList();
  }

  static Future<List<MoodEntry>> getTodayMoodEntries() async {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = today.add(const Duration(days: 1));
    return getMoodEntriesForDateRange(today, tomorrow);
  }

  static Future<Map<MoodType, int>> getMoodStatistics(DateTime start, DateTime end) async {
    final entries = await getMoodEntriesForDateRange(start, end);
    final Map<MoodType, int> stats = {};
    
    for (var entry in entries) {
      stats[entry.moodType] = (stats[entry.moodType] ?? 0) + 1;
    }
    
    return stats;
  }

  static Future<double> getAverageMoodIntensity(DateTime start, DateTime end) async {
    final entries = await getMoodEntriesForDateRange(start, end);
    if (entries.isEmpty) return 0;
    
    final total = entries.fold<int>(0, (sum, entry) => sum + entry.intensity);
    return total / entries.length;
  }
}

