import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.2),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white, fontSize: 16.0),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            )),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Please enter your $hintText';
        }
        return null;
      },
    );
  }
}
