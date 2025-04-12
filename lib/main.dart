import 'package:flutter/material.dart';
import 'package:flutter_getx_scaffold/app.dart'; // Your main App widget
import 'package:flutter_getx_scaffold/core/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init(); // Initialize controllers and services
  runApp(const MyApp()); // No reactive wrapper needed here
}

