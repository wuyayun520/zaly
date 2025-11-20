import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/challenge_model.dart';

class ChallengeService {
  static const String _progressKey = 'challenge_progress';
  static const String _activeChallengesKey = 'active_challenges';

  static Future<List<Challenge>> getAvailableChallenges() async {
    return [
      Challenge(
        id: 'gratitude_7',
        title: '7-Day Gratitude Challenge',
        description: 'Practice gratitude daily to improve your mood and outlook',
        category: 'Gratitude',
        durationDays: 7,
        icon: '🙏',
        color: '#FFD700',
        createdAt: DateTime.now(),
        tasks: [
          'Write down 3 things you\'re grateful for today',
          'Thank someone who helped you recently',
          'Appreciate a small moment of joy',
          'Express gratitude for your health',
          'Be thankful for a challenge that taught you something',
          'Show appreciation to yourself',
          'Share your gratitude journey with others',
        ],
      ),
      Challenge(
        id: 'mindfulness_10',
        title: '10-Day Mindfulness Journey',
        description: 'Develop mindfulness through daily meditation and awareness',
        category: 'Mindfulness',
        durationDays: 10,
        icon: '🧘',
        color: '#98D8C8',
        createdAt: DateTime.now(),
        tasks: [
          'Practice 5 minutes of breathing meditation',
          'Eat one meal mindfully without distractions',
          'Take a mindful walk in nature',
          'Do a body scan meditation',
          'Practice mindful listening in conversations',
          'Observe your thoughts without judgment',
          'Practice loving-kindness meditation',
          'Be present during a daily routine',
          'Notice 5 things you can see, hear, and feel',
          'Reflect on your mindfulness journey',
        ],
      ),
      Challenge(
        id: 'self_care_14',
        title: '14-Day Self-Care Challenge',
        description: 'Prioritize your well-being with daily self-care practices',
        category: 'Self-Care',
        durationDays: 14,
        icon: '💆',
        color: '#FF6B9D',
        createdAt: DateTime.now(),
        tasks: [
          'Get 8 hours of sleep',
          'Drink 8 glasses of water',
          'Take a relaxing bath or shower',
          'Read for pleasure for 30 minutes',
          'Do something creative',
          'Connect with a friend',
          'Practice saying no to something',
          'Enjoy your favorite healthy meal',
          'Spend time in nature',
          'Do a digital detox for 2 hours',
          'Practice gentle stretching',
          'Write in your journal',
          'Do something that makes you laugh',
          'Celebrate your self-care journey',
        ],
      ),
      Challenge(
        id: 'positivity_21',
        title: '21-Day Positivity Challenge',
        description: 'Cultivate a positive mindset through daily practices',
        category: 'Positivity',
        durationDays: 21,
        icon: '☀️',
        color: '#FFA500',
        createdAt: DateTime.now(),
        tasks: List.generate(21, (index) {
          final practices = [
            'Start your day with positive affirmations',
            'Compliment someone genuinely',
            'Replace a negative thought with a positive one',
            'Share something positive on social media',
            'Do a random act of kindness',
            'Focus on solutions instead of problems',
            'Celebrate a small win',
          ];
          return practices[index % practices.length];
        }),
      ),
      Challenge(
        id: 'emotional_awareness_7',
        title: '7-Day Emotional Awareness',
        description: 'Develop deeper understanding of your emotional patterns',
        category: 'Emotional Health',
        durationDays: 7,
        icon: '💭',
        color: '#A496FA',
        createdAt: DateTime.now(),
        tasks: [
          'Track your emotions throughout the day',
          'Identify triggers for strong emotions',
          'Practice naming your emotions specifically',
          'Notice physical sensations with emotions',
          'Explore the message behind your emotions',
          'Practice emotional acceptance',
          'Reflect on your emotional patterns',
        ],
      ),
    ];
  }

  static Future<ChallengeProgress?> getChallengeProgress(String challengeId) async {
    final prefs = await SharedPreferences.getInstance();
    final String? progressJson = prefs.getString('$_progressKey\_$challengeId');
    
    if (progressJson == null) {
      return null;
    }
    
    return ChallengeProgress.fromJson(json.decode(progressJson));
  }

  static Future<void> startChallenge(String challengeId) async {
    final progress = ChallengeProgress(
      challengeId: challengeId,
      startDate: DateTime.now(),
      completedDays: {},
      currentStreak: 0,
      longestStreak: 0,
      earnedBadges: [],
    );
    
    await _saveProgress(progress);
    await _addToActiveChallenges(challengeId);
  }

  static Future<void> markDayComplete(String challengeId, int dayNumber) async {
    final progress = await getChallengeProgress(challengeId);
    if (progress == null) return;

    final updatedCompletedDays = Map<int, bool>.from(progress.completedDays);
    updatedCompletedDays[dayNumber] = true;

    // Calculate streak
    int newStreak = _calculateStreak(updatedCompletedDays, dayNumber);
    int newLongestStreak = newStreak > progress.longestStreak ? newStreak : progress.longestStreak;

    // Check for new badges
    final newBadges = List<String>.from(progress.earnedBadges);
    if (dayNumber == 1 && !newBadges.contains('starter')) {
      newBadges.add('starter');
    }
    if (newStreak >= 3 && !newBadges.contains('consistent')) {
      newBadges.add('consistent');
    }
    if (newStreak >= 7 && !newBadges.contains('dedicated')) {
      newBadges.add('dedicated');
    }

    final updatedProgress = progress.copyWith(
      completedDays: updatedCompletedDays,
      currentStreak: newStreak,
      longestStreak: newLongestStreak,
      earnedBadges: newBadges,
    );

    await _saveProgress(updatedProgress);
  }

  static int _calculateStreak(Map<int, bool> completedDays, int currentDay) {
    int streak = 0;
    for (int i = currentDay; i >= 1; i--) {
      if (completedDays[i] == true) {
        streak++;
      } else {
        break;
      }
    }
    return streak;
  }

  static Future<void> _saveProgress(ChallengeProgress progress) async {
    final prefs = await SharedPreferences.getInstance();
    final progressJson = json.encode(progress.toJson());
    await prefs.setString('$_progressKey\_${progress.challengeId}', progressJson);
  }

  static Future<void> _addToActiveChallenges(String challengeId) async {
    final prefs = await SharedPreferences.getInstance();
    final activeChallenges = prefs.getStringList(_activeChallengesKey) ?? [];
    if (!activeChallenges.contains(challengeId)) {
      activeChallenges.add(challengeId);
      await prefs.setStringList(_activeChallengesKey, activeChallenges);
    }
  }

  static Future<List<String>> getActiveChallengeIds() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_activeChallengesKey) ?? [];
  }

  static Future<void> completeChallenge(String challengeId) async {
    final progress = await getChallengeProgress(challengeId);
    if (progress == null) return;

    final newBadges = List<String>.from(progress.earnedBadges);
    if (!newBadges.contains('champion')) {
      newBadges.add('champion');
    }

    final updatedProgress = progress.copyWith(earnedBadges: newBadges);
    await _saveProgress(updatedProgress);
  }

  static List<ChallengeBadge> getAllBadges() {
    return [
      ChallengeBadge(
        id: 'starter',
        name: 'First Step',
        description: 'Complete your first day',
        icon: '🌱',
        type: BadgeType.starter,
      ),
      ChallengeBadge(
        id: 'consistent',
        name: 'Consistent',
        description: 'Complete 3 days in a row',
        icon: '🔥',
        type: BadgeType.consistent,
      ),
      ChallengeBadge(
        id: 'dedicated',
        name: 'Dedicated',
        description: 'Complete 7 days in a row',
        icon: '⭐',
        type: BadgeType.dedicated,
      ),
      ChallengeBadge(
        id: 'champion',
        name: 'Champion',
        description: 'Complete the full challenge',
        icon: '🏆',
        type: BadgeType.champion,
      ),
    ];
  }
}

