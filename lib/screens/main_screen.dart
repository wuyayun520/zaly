import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'community_screen.dart';
import 'healing_center_screen.dart';
import 'me_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
  
  // 静态方法用于切换标签页
  static _MainScreenState? of(BuildContext context) {
    return context.findAncestorStateOfType<_MainScreenState>();
  }
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  
  // 公开方法用于切换标签页
  void switchToTab(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 3) {
      MeScreen.refresh();
    }
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const CommunityScreen(),
    const HealingCenterScreen(),
    MeScreen(key: MeScreen.globalKey),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: _CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          // 切换到 MeScreen 时刷新帖子
          if (index == 3) {
            MeScreen.refresh();
          }
        },
      ),
    );
  }
}

class _CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const _CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFFF6B9D),
            Color(0xFFA496FA),
          ],
        ),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            iconPath: 'assets/tab/zaly_tab_home',
            isSelected: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          _buildNavItem(
            iconPath: 'assets/tab/zaly_tab_community',
            isSelected: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          _buildNavItem(
            iconPath: 'assets/tab/zaly_tab_healing_center',
            isSelected: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          _buildNavItem(
            iconPath: 'assets/tab/zaly_tab_me',
            isSelected: currentIndex == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String iconPath,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Image.asset(
          '$iconPath${isSelected ? '_pre' : '_nor'}.webp',
          width: 48,
          height: 48,
        ),
      ),
    );
  }
}

