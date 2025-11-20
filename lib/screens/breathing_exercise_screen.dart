import 'package:flutter/material.dart';
import 'dart:async';
import '../theme/app_theme.dart';

class BreathingExerciseScreen extends StatefulWidget {
  const BreathingExerciseScreen({super.key});

  @override
  State<BreathingExerciseScreen> createState() => _BreathingExerciseScreenState();
}

class _BreathingExerciseScreenState extends State<BreathingExerciseScreen> with TickerProviderStateMixin {
  late AnimationController _breathController;
  late Animation<double> _breathAnimation;
  
  Timer? _phaseTimer;
  int _currentCycle = 0;
  int _totalCycles = 5;
  String _currentPhase = 'Ready';
  bool _isExercising = false;
  
  BreathingPattern _selectedPattern = BreathingPattern.box;
  
  @override
  void initState() {
    super.initState();
    _breathController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    
    _breathAnimation = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(parent: _breathController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _breathController.dispose();
    _phaseTimer?.cancel();
    super.dispose();
  }

  void _startExercise() {
    setState(() {
      _isExercising = true;
      _currentCycle = 0;
      _currentPhase = 'Get Ready';
    });

    Future.delayed(const Duration(seconds: 2), () {
      _runBreathingCycle();
    });
  }

  void _stopExercise() {
    setState(() {
      _isExercising = false;
      _currentPhase = 'Completed';
      _currentCycle = 0;
    });
    _phaseTimer?.cancel();
    _breathController.stop();
    _breathController.reset();
  }

  void _runBreathingCycle() {
    if (!_isExercising || _currentCycle >= _totalCycles) {
      _stopExercise();
      return;
    }

    setState(() {
      _currentCycle++;
    });

    switch (_selectedPattern) {
      case BreathingPattern.box:
        _runBoxBreathing();
        break;
      case BreathingPattern.fourSevenEight:
        _runFourSevenEightBreathing();
        break;
      case BreathingPattern.calm:
        _runCalmBreathing();
        break;
    }
  }

  void _runBoxBreathing() {
    // Inhale (4s)
    setState(() => _currentPhase = 'Breathe In');
    _breathController.duration = const Duration(seconds: 4);
    _breathController.forward(from: 0);
    
    _phaseTimer = Timer(const Duration(seconds: 4), () {
      // Hold (4s)
      setState(() => _currentPhase = 'Hold');
      _phaseTimer = Timer(const Duration(seconds: 4), () {
        // Exhale (4s)
        setState(() => _currentPhase = 'Breathe Out');
        _breathController.reverse();
        
        _phaseTimer = Timer(const Duration(seconds: 4), () {
          // Hold (4s)
          setState(() => _currentPhase = 'Hold');
          _phaseTimer = Timer(const Duration(seconds: 4), () {
            _runBreathingCycle();
          });
        });
      });
    });
  }

  void _runFourSevenEightBreathing() {
    // Inhale (4s)
    setState(() => _currentPhase = 'Breathe In');
    _breathController.duration = const Duration(seconds: 4);
    _breathController.forward(from: 0);
    
    _phaseTimer = Timer(const Duration(seconds: 4), () {
      // Hold (7s)
      setState(() => _currentPhase = 'Hold');
      _phaseTimer = Timer(const Duration(seconds: 7), () {
        // Exhale (8s)
        setState(() => _currentPhase = 'Breathe Out');
        _breathController.duration = const Duration(seconds: 8);
        _breathController.reverse();
        
        _phaseTimer = Timer(const Duration(seconds: 8), () {
          _runBreathingCycle();
        });
      });
    });
  }

  void _runCalmBreathing() {
    // Inhale (4s)
    setState(() => _currentPhase = 'Breathe In');
    _breathController.duration = const Duration(seconds: 4);
    _breathController.forward(from: 0);
    
    _phaseTimer = Timer(const Duration(seconds: 4), () {
      // Exhale (6s)
      setState(() => _currentPhase = 'Breathe Out');
      _breathController.duration = const Duration(seconds: 6);
      _breathController.reverse();
      
      _phaseTimer = Timer(const Duration(seconds: 6), () {
        _runBreathingCycle();
      });
    });
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
          'Breathing Exercise',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  children: [
                    if (!_isExercising) ...[
                      const SizedBox(height: 24),
                      _buildPatternSelector(),
                      const SizedBox(height: 24),
                      _buildCycleSelector(),
                    ],
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Center(
                        child: _buildBreathingCircle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: _buildControlButton(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).padding.bottom + 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPatternSelector() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select Breathing Pattern',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          ...BreathingPattern.values.map((pattern) {
            final isSelected = _selectedPattern == pattern;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedPattern = pattern;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isSelected ? AppTheme.primaryColor.withOpacity(0.1) : Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected ? AppTheme.primaryColor : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: isSelected ? AppTheme.primaryColor : Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        pattern.icon,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pattern.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isSelected ? AppTheme.primaryColor : Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            pattern.description,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildCycleSelector() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Number of Cycles',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [3, 5, 10].map((cycles) {
              final isSelected = _totalCycles == cycles;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _totalCycles = cycles;
                  });
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: isSelected
                        ? LinearGradient(
                            colors: [
                              AppTheme.primaryColor,
                              AppTheme.primaryColor.withOpacity(0.7),
                            ],
                          )
                        : null,
                    color: isSelected ? null : Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cycles.toString(),
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black87,
                        ),
                      ),
                      Text(
                        'cycles',
                        style: TextStyle(
                          fontSize: 12,
                          color: isSelected ? Colors.white : Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildBreathingCircle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = MediaQuery.of(context).size.width;
            final availableHeight = constraints.maxHeight > 0 
                ? constraints.maxHeight 
                : MediaQuery.of(context).size.height * 0.4;
            final maxSize = (availableHeight * 0.6).clamp(150.0, screenWidth * 0.65);
            final size = maxSize.clamp(150.0, 250.0);
            return AnimatedBuilder(
              animation: _breathAnimation,
              builder: (context, child) {
                return Container(
                  width: size * _breathAnimation.value,
                  height: size * _breathAnimation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppTheme.primaryColor.withOpacity(0.3),
                    AppTheme.primaryColor.withOpacity(0.1),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Center(
                child: Container(
                  width: (size * 0.8) * _breathAnimation.value,
                  height: (size * 0.8) * _breathAnimation.value,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFFF6B9D),
                        const Color(0xFFA496FA),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryColor.withOpacity(0.3),
                        blurRadius: 30,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            );
              },
            );
          },
        ),
        const SizedBox(height: 24),
        Text(
          _currentPhase,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        if (_isExercising) ...[
          const SizedBox(height: 12),
          Text(
            'Cycle $_currentCycle of $_totalCycles',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(0.8),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }

  Widget _buildControlButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: _isExercising ? _stopExercise : _startExercise,
        style: ElevatedButton.styleFrom(
          backgroundColor: _isExercising ? Colors.red : AppTheme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Text(
          _isExercising ? 'Stop Exercise' : 'Start Exercise',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

enum BreathingPattern {
  box,
  fourSevenEight,
  calm,
}

extension BreathingPatternExtension on BreathingPattern {
  String get name {
    switch (this) {
      case BreathingPattern.box:
        return 'Box Breathing';
      case BreathingPattern.fourSevenEight:
        return '4-7-8 Breathing';
      case BreathingPattern.calm:
        return 'Calm Breathing';
    }
  }

  String get description {
    switch (this) {
      case BreathingPattern.box:
        return 'Inhale 4s, Hold 4s, Exhale 4s, Hold 4s';
      case BreathingPattern.fourSevenEight:
        return 'Inhale 4s, Hold 7s, Exhale 8s';
      case BreathingPattern.calm:
        return 'Inhale 4s, Exhale 6s';
    }
  }

  IconData get icon {
    switch (this) {
      case BreathingPattern.box:
        return Icons.crop_square;
      case BreathingPattern.fourSevenEight:
        return Icons.air;
      case BreathingPattern.calm:
        return Icons.spa;
    }
  }
}

