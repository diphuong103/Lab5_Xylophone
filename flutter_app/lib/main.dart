import 'package:flutter/material.dart';

import 'screens/xylophone_screen.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF111827),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF4C95D),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const XylophoneScreen(),
    );
  }
}
