import 'package:flutter/material.dart';
import 'package:fyp_twentyfive/commons/custom_button.dart';
import '../../commons/widgets/common_textfield.dart';
import './buttons.dart';
import 'package:intl/intl.dart';
import 'package:fyp_twentyfive/features/auth/services/auth_service.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _SignupScreen();
  }
}
class _SignupScreen extends State<SignupScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final AuthService authService = AuthService();
  final _signUpFormKey = GlobalKey<FormState>();

  // ignore: unused_field
  final _dateFormat = DateFormat('dd-mm-yyyy');
  DateTime? _dateTime = DateTime.now();

  void signUpUser() {
    authService.SignUpUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      firstname: _firstNameController.text,
      lastname: _lastNameController.text,
    );
  }

  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizemanager = SizeManager(context);
    return Form(
      key: _signUpFormKey,
      child: ListView(children: <Widget>[
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(3),
                left: sizemanager.scaledHeight(1),
                right: sizemanager.scaledHeight(1)),
            child: CustomTextField(
              controller: _firstNameController,
              hintText: 'First Name',
            )),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(3),
                left: sizemanager.scaledHeight(1),
                right: sizemanager.scaledHeight(1)),
            child: CustomTextField(
              controller: _lastNameController,
              hintText: 'Last Name',
            )),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(3),
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
              hintText: 'Password',
            )),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(2),
                left: sizemanager.scaledHeight(1),
                right: sizemanager.scaledHeight(1)),
            child: CustomTextField(
              controller: _confirmPasswordController,
              hintText: 'Confirm Password',
            )),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(1),
                left: sizemanager.scaledHeight(1)),
            child: TextButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1960),
                    lastDate: DateTime.now(),
                  ).then((value) {
                    setState(() {
                      _dateTime = value;
                      print('$_dateTime');
                    });
                  });
                },
                child: Text(
                  'Select Date of Birth ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ))),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(0),
                left: sizemanager.scaledHeight(0),
                right: sizemanager.scaledHeight(1)),
            child: const AlreadyHaveAccount()),
        Container(
            margin: EdgeInsets.only(
                top: sizemanager.scaledHeight(0),
                left: sizemanager.scaledHeight(3),
                right: sizemanager.scaledHeight(3)),
            child: CustomButton(
              text: 'Sign Up',
              onTap: () {
                if (_signUpFormKey.currentState!.validate()) {
                  print(_signUpFormKey);
                  print('condition passed');
                  signUpUser();
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
