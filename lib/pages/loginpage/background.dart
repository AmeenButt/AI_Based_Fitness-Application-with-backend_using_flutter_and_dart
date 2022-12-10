import 'package:flutter/material.dart';
import 'loginscreen.dart';

class BackGround extends StatelessWidget {
  const BackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background1.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)),
        )),
        const Scaffold(
          backgroundColor: Colors.transparent,
          body: LoginScreen(),
        )
      ],
    );
  }
}
