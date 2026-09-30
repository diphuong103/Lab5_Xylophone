import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../widgets/xylophone_key.dart';

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  static const _notes = [
    (label: 'C', solfege: 'DO', color: Color(0xFFE85D5D)),
    (label: 'D', solfege: 'RE', color: Color(0xFFF28C45)),
    (label: 'E', solfege: 'MI', color: Color(0xFFF2C14E)),
    (label: 'F', solfege: 'FA', color: Color(0xFF62B56B)),
    (label: 'G', solfege: 'SOL', color: Color(0xFF48A9A6)),
    (label: 'A', solfege: 'LA', color: Color(0xFF5484D5)),
    (label: 'B', solfege: 'TI', color: Color(0xFF9B6BC7)),
  ];

  Future<void> _playNote(int index) async {
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource('audio/note_${index + 1}.wav'));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 18, 24, 24),
          child: Column(
            children: [
              const SizedBox(height: 12),
              const Text(
                'XYLOPHONE',
                style: TextStyle(
                  color: Color(0xFFF4C95D),
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Make some music',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Tap a bar to play a note',
                style: TextStyle(color: Color(0xFF9CA3AF), fontSize: 14),
              ),
              const SizedBox(height: 28),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (var index = 0; index < _notes.length; index++)
                      Expanded(
                        child: XylophoneKey(
                          label: _notes[index].label,
                          solfege: _notes[index].solfege,
                          color: _notes[index].color,
                          onPressed: () => _playNote(index),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'C  ·  D  ·  E  ·  F  ·  G  ·  A  ·  B',
                style: TextStyle(
                  color: Color(0xFF778196),
                  fontSize: 12,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
