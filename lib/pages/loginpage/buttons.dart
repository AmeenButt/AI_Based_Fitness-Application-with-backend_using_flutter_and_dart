import 'package:flutter/material.dart';
class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // foreground
            elevation: 2.0,shadowColor: Colors.transparent),
        onPressed: () {
        },
        child: const Text(
          "Forgot your password?",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 15.0,
              fontFamily: 'Raleway'
          ),
        )); //container
  }
}