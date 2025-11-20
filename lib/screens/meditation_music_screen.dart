import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';

class MeditationMusicScreen extends StatefulWidget {
  const MeditationMusicScreen({super.key});

  @override
  State<MeditationMusicScreen> createState() => _MeditationMusicScreenState();
}

class _MeditationMusicScreenState extends State<MeditationMusicScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  int _currentTrackIndex = 0;
  bool _isPlaying = false;
  bool _isLoading = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  final List<Map<String, String>> _tracks = [
    {
      'title': 'Peaceful Mind',
      'description': 'Gentle melodies for deep relaxation',
      'path': 'assets/music/music_1.mp3',
    },
    {
      'title': 'Nature Sounds',
      'description': 'Calming nature ambience',
      'path': 'assets/music/music_2.mp3',
    },
    {
      'title': 'Zen Garden',
      'description': 'Meditative instrumental music',
      'path': 'assets/music/music_3.mp3',
    },
    {
      'title': 'Ocean Waves',
      'description': 'Soothing ocean sounds',
      'path': 'assets/music/music_4.mp3',
    },
    {
      'title': 'Forest Meditation',
      'description': 'Tranquil forest atmosphere',
      'path': 'assets/music/music_5.mp3',
    },
  ];

  @override
  void initState() {
    super.initState();
    _initAudioPlayer();
    _loadTrack(_currentTrackIndex);
  }

  Future<void> _initAudioPlayer() async {
    _audioPlayer.durationStream.listen((duration) {
      if (mounted) {
        setState(() {
          _duration = duration ?? Duration.zero;
        });
      }
    });

    _audioPlayer.positionStream.listen((position) {
      if (mounted) {
        setState(() {
          _position = position;
        });
      }
    });

    _audioPlayer.playerStateStream.listen((state) {
      if (mounted) {
        setState(() {
          _isPlaying = state.playing;
          if (state.processingState == ProcessingState.loading) {
            _isLoading = true;
          } else {
            _isLoading = false;
          }
        });
      }
    });
  }

  Future<void> _loadTrack(int index) async {
    try {
      setState(() {
        _isLoading = true;
        _currentTrackIndex = index;
      });

      final track = _tracks[index];
      await _audioPlayer.setAsset(track['path']!);
      
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load track: $e')),
        );
      }
    }
  }

  Future<void> _playPause() async {
    try {
      if (_isPlaying) {
        await _audioPlayer.pause();
      } else {
        await _audioPlayer.play();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

  Future<void> _seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  Future<void> _previousTrack() async {
    final newIndex = (_currentTrackIndex - 1) % _tracks.length;
    await _loadTrack(newIndex);
    if (_isPlaying) {
      await _audioPlayer.play();
    }
  }

  Future<void> _nextTrack() async {
    final newIndex = (_currentTrackIndex + 1) % _tracks.length;
    await _loadTrack(newIndex);
    if (_isPlaying) {
      await _audioPlayer.play();
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
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
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 100,
                  floating: false,
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                  title: const Text(
                    'Meditation Music',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        // 当前播放的曲目信息
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFFA496FA).withOpacity(0.9),
                                const Color(0xFFFF6B9D).withOpacity(0.9),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.music_note,
                                color: Colors.white,
                                size: 60,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                _tracks[_currentTrackIndex]['title']!,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                _tracks[_currentTrackIndex]['description']!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.9),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        // 进度条
                        Column(
                          children: [
                            Slider(
                              value: _duration.inMilliseconds > 0
                                  ? _position.inMilliseconds.toDouble()
                                  : 0.0,
                              min: 0.0,
                              max: _duration.inMilliseconds > 0
                                  ? _duration.inMilliseconds.toDouble()
                                  : 1.0,
                              onChanged: (value) {
                                _seek(Duration(milliseconds: value.toInt()));
                              },
                              activeColor: const Color(0xFFFF6B9D),
                              inactiveColor: Colors.white.withOpacity(0.3),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _formatDuration(_position),
                                    style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    _formatDuration(_duration),
                                    style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        // 播放控制按钮
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: _previousTrack,
                              icon: const Icon(
                                Icons.skip_previous,
                                color: Colors.black87,
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 24),
                            GestureDetector(
                              onTap: _playPause,
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFFFF6B9D),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFFFF6B9D).withOpacity(0.5),
                                      blurRadius: 20,
                                      offset: const Offset(0, 10),
                                    ),
                                  ],
                                ),
                                child: _isLoading
                                    ? const Center(
                                        child: CircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                        ),
                                      )
                                    : Icon(
                                        _isPlaying ? Icons.pause : Icons.play_arrow,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                              ),
                            ),
                            const SizedBox(width: 24),
                            IconButton(
                              onPressed: _nextTrack,
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.black87,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        // 曲目列表
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
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
                              const Text(
                                'All Tracks',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 16),
                              ...List.generate(_tracks.length, (index) {
                                final track = _tracks[index];
                                final isCurrentTrack = index == _currentTrackIndex;
                                return GestureDetector(
                                  onTap: () => _loadTrack(index),
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 12),
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: isCurrentTrack
                                          ? const Color(0xFFFF6B9D).withOpacity(0.1)
                                          : Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: isCurrentTrack
                                            ? const Color(0xFFFF6B9D)
                                            : Colors.transparent,
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: isCurrentTrack
                                                ? const Color(0xFFFF6B9D)
                                                : Colors.grey.withOpacity(0.3),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child: Icon(
                                            isCurrentTrack && _isPlaying
                                                ? Icons.pause
                                                : Icons.play_arrow,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                track['title']!,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: isCurrentTrack
                                                      ? const Color(0xFFFF6B9D)
                                                      : Colors.black87,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                track['description']!,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (isCurrentTrack)
                                          const Icon(
                                            Icons.check_circle,
                                            color: Color(0xFFFF6B9D),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                        const SizedBox(height: 100),
                      ],
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

