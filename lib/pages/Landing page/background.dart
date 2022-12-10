import 'package:flutter/material.dart';
import 'home.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Home(),
    );
  }
}
