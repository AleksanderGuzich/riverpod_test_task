import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:main/main.dart';
import '../test_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dataDI.init();

  runApp(const ProviderScope(child: TestApp()));
}
