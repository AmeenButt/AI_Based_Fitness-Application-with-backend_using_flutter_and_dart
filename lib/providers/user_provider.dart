import 'package:flutter/cupertino.dart';
import 'package:fyp_twentyfive/models/user.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class UserProvider extends ChangeNotifier {
  User _user = User(
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  );
  User get user => _user;
  void setUser(String user) {
    _user= jsonDecode(user);
    notifyListeners();
  }
}
