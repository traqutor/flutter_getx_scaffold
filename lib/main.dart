import 'package:flutter/material.dart';
import 'package:flutter_getx_scaffold/core/dependency_injection.dart';
import 'app.dart';

void main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  await DependencyInjection.init();

  runApp(const MyApp());
}
