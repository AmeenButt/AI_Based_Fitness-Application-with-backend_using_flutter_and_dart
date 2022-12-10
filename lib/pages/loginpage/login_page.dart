import 'package:flutter/material.dart';
import './background.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
        subtitle1: TextStyle(color: Colors.white),
      )),
      debugShowCheckedModeBanner: false,
      title: 'Login page',
      home: BackGround(),
    );
  }
}
