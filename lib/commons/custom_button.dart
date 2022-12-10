import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: onTap,
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25.0,
                  fontFamily: 'Raleway'),
            ),
          )),
    );
  }
}
