import 'package:flutter/material.dart';
import 'package:weather/styles/theme.dart';
import 'package:weather/views/home_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.main,
      home: const HomeView(),
    );
  }
}
