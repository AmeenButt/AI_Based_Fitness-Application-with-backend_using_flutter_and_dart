import 'package:flutter/material.dart';
class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 80.0, right: 80.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent, // foreground
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {},
            child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25.0,
                      fontFamily: 'Raleway'),
                )))); //container
  }
}
class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // foreground
            elevation: 2.0,shadowColor: Colors.transparent),
        onPressed: () {
        },
        child: const Text(
          "Already have an account?",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 15.0,
              fontFamily: 'Raleway'),
        )); //container
  }
}