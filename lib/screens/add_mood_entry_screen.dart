import 'package:flutter/material.dart';
import '../models/mood_entry.dart';
import '../services/mood_service.dart';
import '../theme/app_theme.dart';

class AddMoodEntryScreen extends StatefulWidget {
  const AddMoodEntryScreen({super.key});

  @override
  State<AddMoodEntryScreen> createState() => _AddMoodEntryScreenState();
}

class _AddMoodEntryScreenState extends State<AddMoodEntryScreen> {
  MoodType? _selectedMood;
  double _intensity = 5;
  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _triggerController = TextEditingController();
  final List<String> _selectedTags = [];
  
  final List<String> _availableTags = [
    'work',
    'family',
    'friends',
    'health',
    'sleep',
    'exercise',
    'relationship',
    'money',
    'hobby',
    'weather',
  ];

  @override
  void dispose() {
    _noteController.dispose();
    _triggerController.dispose();
    super.dispose();
  }

  Future<void> _saveMoodEntry() async {
    if (_selectedMood == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a mood')),
      );
      return;
    }

    final entry = MoodEntry(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      timestamp: DateTime.now(),
      moodType: _selectedMood!,
      intensity: _intensity.round(),
      note: _noteController.text.trim().isEmpty ? null : _noteController.text.trim(),
      tags: _selectedTags,
      trigger: _triggerController.text.trim().isEmpty ? null : _triggerController.text.trim(),
    );

    await MoodService.saveMoodEntry(entry);
    
    if (mounted) {
      Navigator.pop(context, true);
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
            icon: const Icon(Icons.close, size: 20, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: const Text(
          'How are you feeling?',
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
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select your mood',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildMoodSelector(),
                  const SizedBox(height: 32),
                  const Text(
                    'Intensity',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildIntensitySlider(),
                  const SizedBox(height: 32),
                  const Text(
                    'What triggered this feeling?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      controller: _triggerController,
                      decoration: const InputDecoration(
                        hintText: 'e.g., Had a great meeting',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16),
                      ),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Tags',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildTagSelector(),
                  const SizedBox(height: 32),
                  const Text(
                    'Notes (optional)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      controller: _noteController,
                      decoration: const InputDecoration(
                        hintText: 'Write your thoughts...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16),
                      ),
                      maxLines: 5,
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: _saveMoodEntry,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      child: const Text(
                        'Save Mood Entry',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoodSelector() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: MoodType.values.map((mood) {
          final isSelected = _selectedMood == mood;
          final color = Color(int.parse(mood.color.substring(1), radix: 16) + 0xFF000000);
          
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedMood = mood;
              });
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: isSelected ? color.withOpacity(0.2) : Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected ? color : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    mood.emoji,
                    style: const TextStyle(fontSize: 32),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    mood.displayName.split(' ').first,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: isSelected ? color : Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildIntensitySlider() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Low',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                _intensity.round().toString(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primaryColor,
                ),
              ),
              const Text(
                'High',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: AppTheme.primaryColor,
              inactiveTrackColor: Colors.grey[300],
              thumbColor: AppTheme.primaryColor,
              overlayColor: AppTheme.primaryColor.withOpacity(0.2),
              trackHeight: 6,
            ),
            child: Slider(
              value: _intensity,
              min: 1,
              max: 10,
              divisions: 9,
              onChanged: (value) {
                setState(() {
                  _intensity = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTagSelector() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: _availableTags.map((tag) {
          final isSelected = _selectedTags.contains(tag);
          
          return GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  _selectedTags.remove(tag);
                } else {
                  _selectedTags.add(tag);
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppTheme.primaryColor : Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '#$tag',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.black87,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

