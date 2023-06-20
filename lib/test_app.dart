import 'package:flutter/material.dart';
import 'package:main/main.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Test',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainScreen(title: 'Riverpod Test'),
    );
  }
}
