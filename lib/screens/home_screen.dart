import 'package:flutter/material.dart';
import 'mood_journal_screen.dart';
import 'post_story_screen.dart';
import 'me_screen.dart';
import 'main_screen.dart';
import 'breathing_exercise_screen.dart';
import 'meditation_music_screen.dart';
import 'wellness_library_screen.dart';
import '../services/mood_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _todayMoodCount = 0;
  int _weekMoodCount = 0;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadMoodStats();
  }

  Future<void> _loadMoodStats() async {
    setState(() {
      _isLoading = true;
    });
    
    try {
      final todayEntries = await MoodService.getTodayMoodEntries();
      final now = DateTime.now();
      final weekStart = now.subtract(const Duration(days: 7));
      final weekEntries = await MoodService.getMoodEntriesForDateRange(weekStart, now);
      
      setState(() {
        _todayMoodCount = todayEntries.length;
        _weekMoodCount = weekEntries.length;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }
  
  Future<void> _refreshData() async {
    await _loadMoodStats();
  }
  
  IconData _getMotivationIcon() {
    if (_weekMoodCount == 0) {
      return Icons.lightbulb_outline;
    } else if (_weekMoodCount < 3) {
      return Icons.trending_up;
    } else if (_weekMoodCount < 5) {
      return Icons.favorite_border;
    } else if (_weekMoodCount < 7) {
      return Icons.emoji_events;
    } else {
      return Icons.star;
    }
  }
  
  String _getActionButtonText(String action) {
    switch (action) {
      case 'breathing':
        return 'Start Breathing Exercise';
      case 'music':
        return 'Play Meditation Music';
      case 'wellness':
        return 'Explore Wellness Library';
      case 'share':
        return 'Share Your Story';
      case 'mood':
      default:
        return 'Track Your Mood';
    }
  }

  String _getMotivationMessage() {
    if (_weekMoodCount == 0) {
      return 'Start your wellness journey today! Track your first mood.';
    } else if (_weekMoodCount == 1) {
      return 'Great start! Keep tracking to build a healthy habit. 🌱';
    } else if (_weekMoodCount < 3) {
      return 'You\'re making progress! $_weekMoodCount entries this week. 💪';
    } else if (_weekMoodCount < 5) {
      return 'Doing well! $_weekMoodCount check-ins this week. Keep it up! ✨';
    } else if (_weekMoodCount < 7) {
      return 'Excellent work! $_weekMoodCount entries. Almost a full week! 🎯';
    } else if (_weekMoodCount == 7) {
      return 'Perfect week! 7 days of mindful tracking! 🌟';
    } else {
      return 'Amazing dedication! $_weekMoodCount entries this week! 🎉';
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomNavBarHeight = 70.0;
    final bottomNavBarMargin = 48.0;
    final totalBottomSpace = bottomPadding + bottomNavBarHeight + bottomNavBarMargin + 20;

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/zaly_allbg.webp',
          fit: BoxFit.cover,
        ),
        RefreshIndicator(
          onRefresh: _refreshData,
          color: const Color(0xFFFF6B9D),
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
            SliverSafeArea(
              bottom: false,
              sliver: SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(),
                      const SizedBox(height: 24),
                      _buildDailyCheckIn(),
                      const SizedBox(height: 20),
                      _buildWellnessTools(),
                      const SizedBox(height: 24),
                      _buildTodaysFocus(),
                      const SizedBox(height: 24),
                      _buildWeeklyStats(),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: totalBottomSpace),
            ),
          ],
        ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    final hour = DateTime.now().hour;
    String greeting;
    if (hour < 12) {
      greeting = 'Good Morning';
    } else if (hour < 18) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          greeting,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'How are you feeling today?',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withOpacity(0.9),
          ),
        ),
      ],
    );
  }

  Widget _buildDailyCheckIn() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFFFF6B9D).withOpacity(0.95),
            const Color(0xFFA496FA).withOpacity(0.95),
          ],
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daily Check-in',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Track your emotional wellness',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  'Today',
                  _todayMoodCount.toString(),
                  Icons.today,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildStatCard(
                  'This Week',
                  _weekMoodCount.toString(),
                  Icons.calendar_today,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MoodJournalScreen(),
                  ),
                );
                // 如果用户添加了新的情绪记录,刷新数据
                if (result == true || result == null) {
                  _refreshData();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFFFF6B9D),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: _isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF6B9D)),
                      ),
                    )
                  : const Text(
                      'Track Your Mood',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWellnessTools() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick Actions',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildQuickActionCard(
                'Explore Tools',
                'Breathing, Challenges & More',
                Icons.healing,
                const LinearGradient(
                  colors: [Color(0xFFA496FA), Color(0xFFB8ACFF)],
                ),
                () {
                  // 切换到 Healing Center 标签页 (index 2)
                  MainScreen.of(context)?.switchToTab(2);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildToolCard(
                'Share Story',
                Icons.edit,
                const Color(0xFFFF6B9D),
                () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PostStoryScreen(),
                    ),
                  );
                  if (result == true) {
                    await Future.delayed(const Duration(milliseconds: 300));
                    MeScreen.refresh();
                  }
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildToolCard(
                'Community',
                Icons.people,
                const Color(0xFF90EE90),
                () {
                  // 切换到 Community 标签页 (index 1)
                  MainScreen.of(context)?.switchToTab(1);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickActionCard(
    String title,
    String subtitle,
    IconData icon,
    Gradient gradient,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 15,
              offset: const Offset(0, 6),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.white, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToolCard(String label, IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 18),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(0.95),
              color.withOpacity(0.85),
            ],
          ),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 12,
              offset: const Offset(0, 6),
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.white, size: 32),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTodaysFocus() {
    final hour = DateTime.now().hour;
    Map<String, dynamic> todayFocus;
    
    // 根据时间和用户活跃度提供不同的建议
    if (_todayMoodCount == 0) {
      // 用户今天还没有记录情绪 - 提供不同的工具建议，避免和第一个功能重复
      if (hour < 12) {
        todayFocus = {
          'title': 'Start Your Day Mindfully',
          'description': 'Take a moment for breathing exercises to center yourself',
          'icon': '🌅',
          'action': 'breathing',
        };
      } else if (hour < 18) {
        todayFocus = {
          'title': 'Midday Relaxation',
          'description': 'Take a break with calming meditation music',
          'icon': '☀️',
          'action': 'music',
        };
      } else {
        todayFocus = {
          'title': 'Evening Reflection',
          'description': 'Explore wellness articles for personal growth',
          'icon': '🌙',
          'action': 'wellness',
        };
      }
    } else if (_weekMoodCount < 3) {
      // 用户本周记录较少,鼓励坚持
      todayFocus = {
        'title': 'Build Your Habit',
        'description': 'Consistency is key! Try to track daily for better insights',
        'icon': '🌱',
        'action': 'mood',
      };
    } else {
      // 用户活跃,提供多样化的建议
      final focuses = [
        {
          'title': 'Practice Gratitude',
          'description': 'Write down 3 things you\'re grateful for today',
          'icon': '🙏',
          'action': 'mood',
        },
        {
          'title': 'Mindful Breathing',
          'description': 'Take 5 minutes for breathing exercises',
          'icon': '🧘',
          'action': 'breathing',
        },
        {
          'title': 'Self-Care Time',
          'description': 'Do something kind for yourself today',
          'icon': '💆',
          'action': 'music',
        },
        {
          'title': 'Connect & Share',
          'description': 'Share your feelings with someone you trust',
          'icon': '💬',
          'action': 'share',
        },
        {
          'title': 'Learn & Grow',
          'description': 'Read wellness articles to expand your knowledge',
          'icon': '📚',
          'action': 'wellness',
        },
      ];
      todayFocus = focuses[DateTime.now().day % focuses.length];
    }

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.98),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            offset: const Offset(0, 8),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: const Color(0xFF98D8C8).withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                todayFocus['icon'] as String,
                style: const TextStyle(fontSize: 36),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today\'s Focus',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            todayFocus['title'] as String,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            todayFocus['description'] as String,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[700],
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                final action = todayFocus['action'] as String;
                switch (action) {
                  case 'breathing':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BreathingExerciseScreen(),
                      ),
                    );
                    break;
                  case 'music':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MeditationMusicScreen(),
                      ),
                    );
                    break;
                  case 'wellness':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WellnessLibraryScreen(),
                      ),
                    );
                    break;
                  case 'share':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostStoryScreen(),
                      ),
                    ).then((result) {
                      if (result == true) {
                        Future.delayed(const Duration(milliseconds: 300));
                        MeScreen.refresh();
                      }
                    });
                    break;
                  case 'mood':
                  default:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MoodJournalScreen(),
                      ),
                    ).then((_) => _refreshData());
                    break;
                }
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFFFF6B9D),
                side: const BorderSide(color: Color(0xFFFF6B9D), width: 1.5),
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                _getActionButtonText(todayFocus['action'] as String),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeeklyStats() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.98),
            const Color(0xFFF8F9FA).withOpacity(0.98),
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            offset: const Offset(0, 8),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: const Color(0xFF98D8C8).withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFF6B9D), Color(0xFFA496FA)],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.insights,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'This Week\'s Progress',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _buildWeekStatItem(
                  Icons.favorite,
                  _weekMoodCount.toString(),
                  'Mood Entries',
                  const Color(0xFFFF6B9D),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildWeekStatItem(
                  Icons.local_fire_department,
                  _weekMoodCount >= 5 ? '$_weekMoodCount' : '0',
                  'Day Streak',
                  const Color(0xFFFFB347),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF98D8C8).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  _getMotivationIcon(),
                  color: const Color(0xFF98D8C8),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    _getMotivationMessage(),
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[700],
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

  Widget _buildWeekStatItem(IconData icon, String value, String label, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

