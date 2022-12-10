import 'package:flutter/material.dart';
import '../../commons/custom_button.dart';
import '../../commons/widgets/common_textfield.dart';
import '../../features/auth/services/auth_service.dart';
import './buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _LoginFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void SignInUser() {
    authService.SignInUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text);
  }

  Widget build(BuildContext context) {
    var sizemanager = SizeManager(context);
    return Form(
      key: _LoginFormKey,
      child: ListView(children: <Widget>[
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(30),
                left: sizemanager.scaledHeight(1),
                right: sizemanager.scaledHeight(1)),
            child: CustomTextField(
              controller: _emailController,
              hintText: 'Email',
            )),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(2),
                left: sizemanager.scaledHeight(1),
                right: sizemanager.scaledHeight(1)),
            child: CustomTextField(
              controller: _passwordController,
              hintText: 'password',
            )),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(0),
                left: sizemanager.scaledHeight(0),
                right: sizemanager.scaledHeight(1)),
            child: const ForgotPasswordButton()),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(0),
                left: sizemanager.scaledHeight(3),
                right: sizemanager.scaledHeight(3)),
            child: CustomButton(
              text: 'Login',
              onTap: () {
                if (_LoginFormKey.currentState!.validate()) {
                  SignInUser();
                }
              },
            )),
      ]),
    );
  }
}

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
