import 'package:flutter/material.dart';
import '../../auth/widgets/under_appbar.dart';
import '../../auth/widgets/account_page_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black87,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'images/logo.png',
                      width: 120,
                      height: 45,
                      // color: Colors.white,)
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.search_rounded),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.notification_add_outlined),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
      body: Column(
        children: [
          UnderAppBar(),
          SizedBox(
            height: 10,
          ),
          TopButtons()
        ],
      ),
    );
  }
}
