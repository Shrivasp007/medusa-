import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Login App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}