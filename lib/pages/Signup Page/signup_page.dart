import 'package:flutter/material.dart';
import './background.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
        subtitle1: TextStyle(color: Colors.white),
      )),
      debugShowCheckedModeBanner: false,
      title: 'Signup page',
      home: BackGround(),
    );
  }
}
