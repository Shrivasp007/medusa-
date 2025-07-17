import 'package:flutter/material.dart';
import 'profile_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    // अभी सिर्फ सीधे login कर रहे हैं, validation बाद में
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => ProfileScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => login(context),
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}