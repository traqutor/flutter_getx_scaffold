import 'package:flutter/material.dart';
import 'package:can_immo/app.dart'; // Your main App widget
import 'package:can_immo/core/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize controllers and services
  await DependencyInjection.init();

  /// No reactive wrapper needed here
  runApp(const MyApp());
}
