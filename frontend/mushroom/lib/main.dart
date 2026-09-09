
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mushroom/core/app_scroll_behavior.dart';
import 'package:mushroom/features/home/widgets/login_page.dart';
import 'package:mushroom/features/main_shell/views/main_shell_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const AppScrollBehavior(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2F80ED),
        ).copyWith(primary: const Color(0xFF2F80ED)),
      ),
      home: const LoginPage(),
    );
  }
}
