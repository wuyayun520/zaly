import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ai_partner_screen.dart';
import 'mood_journal_screen.dart';
import 'breathing_exercise_screen.dart';
import 'wellness_library_screen.dart';
import 'meditation_music_screen.dart';
import 'velvy_subscriptions_screen.dart';

class HealingCenterScreen extends StatefulWidget {
  const HealingCenterScreen({super.key});

  @override
  State<HealingCenterScreen> createState() => _HealingCenterScreenState();
}

class _HealingCenterScreenState extends State<HealingCenterScreen> {

  // 检查用户是否为有效的 Velvy Premium 用户
  Future<bool> _checkVelvyPremiumStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final isPremium = prefs.getBool('isVelvyPremium') ?? prefs.getBool('isVip') ?? false;
    
    if (!isPremium) {
      return false;
    }
    
    // 检查是否过期
    final expiryStr = prefs.getString('velvyPremiumExpiry') ?? prefs.getString('vipExpiry');
    if (expiryStr == null) {
      return false;
    }
    
    final expiry = DateTime.tryParse(expiryStr);
    if (expiry == null) {
      return false;
    }
    
    // 检查是否已过期
    return DateTime.now().isBefore(expiry);
  }

  // 显示需要 Premium 的确认对话框
  Future<void> _showPremiumRequiredDialog(String featureName) async {
    final shouldSubscribe = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: const Text(
          'Velvy Premium Required',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$featureName is a Premium feature.',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              'Subscribe to Velvy Premium to unlock all healing tools and features.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF6B9D),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Subscribe'),
          ),
        ],
      ),
    );

    if (shouldSubscribe == true && mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const VelvySubscriptionsPage(),
        ),
      );
    }
  }

  // 处理功能点击，检查 Premium 状态
  Future<void> _handleFeatureTap(String featureName, VoidCallback onSuccess) async {
    final isPremium = await _checkVelvyPremiumStatus();
    
    if (isPremium) {
      // 是 Premium 用户，直接执行功能
      onSuccess();
    } else {
      // 不是 Premium 用户，显示对话框
      _showPremiumRequiredDialog(featureName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/zaly_allbg.webp',
            fit: BoxFit.cover,
          ),
          SafeArea(
            bottom: false,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Healing Center',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Your personal wellness toolkit',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  sliver: SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 0.85,
                    ),
                    delegate: SliverChildListDelegate([
                      _buildToolCard(
                        context,
                        title: 'Mood Journal',
                        description: 'Track your emotions',
                        icon: Icons.edit_note,
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFF6B9D), Color(0xFFFF8FB3)],
                        ),
                        onTap: () {
                          _handleFeatureTap(
                            'Mood Journal',
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MoodJournalScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      _buildToolCard(
                        context,
                        title: 'Breathing',
                        description: 'Calm your mind',
                        icon: Icons.air,
                        gradient: const LinearGradient(
                          colors: [Color(0xFFA496FA), Color(0xFFB8ACFF)],
                        ),
                        onTap: () {
                          _handleFeatureTap(
                            'Breathing Exercise',
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BreathingExerciseScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      _buildToolCard(
                        context,
                        title: 'Meditation Music',
                        description: 'Relaxing sounds',
                        icon: Icons.music_note,
                        gradient: const LinearGradient(
                          colors: [Color(0xFF98D8C8), Color(0xFFB0E0E6)],
                        ),
                        onTap: () {
                          _handleFeatureTap(
                            'Meditation Music',
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MeditationMusicScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      _buildToolCard(
                        context,
                        title: 'AI Partner',
                        description: 'Talk to AI companion',
                        icon: Icons.smart_toy,
                        gradient: const LinearGradient(
                          colors: [Color(0xFF90EE90), Color(0xFFA8F5A8)],
                        ),
                        onTap: () {
                          _handleFeatureTap(
                            'AI Partner',
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AIPartnerScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      _buildToolCard(
                        context,
                        title: 'Wellness Library',
                        description: 'Learn & grow',
                        icon: Icons.library_books,
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFFB347), Color(0xFFFFCC70)],
                        ),
                        onTap: () {
                          _handleFeatureTap(
                            'Wellness Library',
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WellnessLibraryScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ]),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).padding.bottom + 166,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToolCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required Gradient gradient,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 20,
              offset: const Offset(0, 10),
              spreadRadius: 2,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  icon,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.95),
                        height: 1.2,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

