import 'package:flutter/material.dart';
class SizeManager {
  final _context;
  double _screenHeight = 0.0;
  double _screenWidth = 0.0;

  SizeManager(this._context) {
    _screenHeight = MediaQuery.of(_context).size.height;
    _screenWidth = MediaQuery.of(_context).size.width;
  }

  double scaledHeight(double value) {
    return value * _screenHeight / 100;
  }

  double scaledWidth(double value) {
    return value * _screenWidth / 100;
  }
}
