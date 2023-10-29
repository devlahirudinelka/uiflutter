// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home_page.dart';
import 'package:flutter_learn/pages/login_page.dart';
import 'package:flutter_learn/pages/main_page.dart';
import 'package:flutter_learn/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      // home: const LoginPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
