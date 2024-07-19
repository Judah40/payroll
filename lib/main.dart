import 'package:flutter/material.dart';
import 'package:payrollapp/Screen/Auth/login.dart';
import 'package:payrollapp/Screen/Home/Homepage.dart';
import 'package:payrollapp/Widgets/Splash.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize window manager
  await windowManager.ensureInitialized();

  // Set the minimum window size
  windowManager.setMinimumSize(const Size(1000, 1000));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        '/login': (context) => const Login(),
        '/home': (context) => const Homepage(),
      },
    );
  }
}
