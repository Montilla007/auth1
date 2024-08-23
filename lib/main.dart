import 'package:flutter/material.dart';

import 'ui/login_ui.dart';
import 'ui/signup_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login SignUp Demo',
      initialRoute: '/', // The initial screen is now HomeScreen
      routes: {
        '/': (context) => HomeScreen(), // Home or Welcome screen
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login'); // Navigate to LoginScreen
          },
          child: Text('Enter'),
        ),
      ),
    );
  }
}
