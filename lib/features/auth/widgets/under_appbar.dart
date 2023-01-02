import 'package:flutter/material.dart';
import 'package:fyp_twentyfive/providers/user_provider.dart';
import 'package:provider/provider.dart';
class UnderAppBar extends StatefulWidget {
  const UnderAppBar({Key? key}) : super(key: key);

  @override
  State<UnderAppBar> createState() => _UnderAppBarState();
}

class _UnderAppBarState extends State<UnderAppBar> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Padding(padding: EdgeInsets.only(top:5),
    child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hello, ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: user.firstname,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: user.lastname,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),),
    );
  }
}
