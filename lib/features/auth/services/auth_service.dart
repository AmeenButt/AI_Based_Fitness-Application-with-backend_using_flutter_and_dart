import 'dart:convert';
import 'package:fyp_twentyfive/models/user.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../constants/error_handling.dart';
import '../../../constants/global_variables.dart';
import '../../../constants/utils.dart';
import '../../../providers/user_provider.dart';
import '../../../commons/widgets/bottombar.dart';
class AuthService {
  void SignUpUser({
    required BuildContext context,
    required String firstname,
    required String lastname,
    required String email,
    required String password,
  }) async {
    try {
      User user = User(
        '',
        firstname,
        lastname,
        email,
        password,
        '',
        '',
      );
      http.Response res = await http.post(Uri.parse('$uri/auth/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            ShowSnakBar(
              context,
              'Account has been created! Login with the same credentials!',
            );
          });
    } catch (e) {
      ShowSnakBar(context, e.toString());
    }
  }

  void SignInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(Uri.parse('$uri/auth/api/signin'),
          body: jsonEncode({'email': email, 'password': password}),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs =
                await SharedPreferences.getInstance(); //getting instance
            Provider.of<UserProvider>(context, listen: false)
                .setUser(res.body); //saving data in app memory
            await prefs.setString(
                "X-auth-token", jsonDecode(res.body)['token']); //setting token
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomBar(),
              ),
            );
          });
    } catch (e) {
      ShowSnakBar(context, e.toString());
    }
  }

  void getUSerData(
    BuildContext context,
  ) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('x-auth-token');
      if (token == null) {
        prefs.setString('x-auth-token', '');
      }
      var tokenRes = await http.post(Uri.parse('$uri/auth/api/tokenisValid'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': token,
          });
      var response = jsonDecode(tokenRes.body);
      if (response == true) {
        http.Response userRes = await http.get(
          Uri.parse('$uri/auth/'),
        );
        headers:
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': token,
        };
        var userProvider = Provider.of<UserProvider>(context, listen: false);
        userProvider.setUser(userRes.body);
      }
    } catch (e) {
      ShowSnakBar(context, e.toString());
    }
  }
}
