import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
void ShowSnakBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
