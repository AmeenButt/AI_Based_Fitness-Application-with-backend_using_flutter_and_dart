import 'package:flutter/material.dart';
import '../../commons/custom_button.dart';
import '../loginpage/login_page.dart';
import '../Signup Page/signup_page.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var sizemanager = SizeManager(context);
    return Container(
        alignment: Alignment.center,
        color: Colors.transparent,
        child: ListView(children: <Widget>[
          Container(
              margin: EdgeInsets.only(
                  top: sizemanager.scaledHeight(
                      35)), //Gives a 2.5 % height padding Expanded(
              child: const Text(
                "Welcome to AI Based Fitness Trainer",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 30.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              )),
          Row(children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    top: sizemanager.scaledHeight(4),
                    left: sizemanager.scaledWidth(35)),
                child: CustomButton(
                  text: 'Register',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                  },
                )),
            Container(
                margin: EdgeInsets.only(
                    top: sizemanager.scaledHeight(4),
                    left: sizemanager.scaledWidth(0)),
                child: CustomButton(
                  text: 'Login',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                ))
          ]),
          Container(
              margin: EdgeInsets.only(
                  top: sizemanager.scaledHeight(36),
                  left: sizemanager.scaledWidth(5)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent, // foreground
                      elevation: 2.0,shadowColor: Colors.transparent),
                  onPressed: () {

                  },
                  child: const Text(
                    "Login With Facebook",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                        fontFamily: 'Raleway'),
                  )),),
        ]));
  }
}

class SizeManager {
  var _context;
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
