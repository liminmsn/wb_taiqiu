import 'package:flutter/material.dart';
import 'package:wb_taiqiu/view/index.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 92, 246, 136))
      ),
      home: IndexView()
    );
  }
}
