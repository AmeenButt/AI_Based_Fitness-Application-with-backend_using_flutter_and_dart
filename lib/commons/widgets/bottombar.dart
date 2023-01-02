import 'package:flutter/material.dart';
import 'package:fyp_twentyfive/features/account/screens/account_screen.dart';
import 'package:fyp_twentyfive/pages/Menu%20Screen/home_screen.dart';
import 'package:fyp_twentyfive/pages/Menu%20Screen/menu_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';

  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomNavBarWidth = 42;
  double bottomNavBarBottomWidht = 5;
  List<Widget> pages = [
    const MenuScreen(),
    const HomeScreen(),
    const AccountScreen(),
  ];

  void updatePage(int page){
    setState(() {
      _page=page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white12,
        backgroundColor: Colors.black87,
        iconSize: 28,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                  width: bottomNavBarWidth,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    color: _page == 0 ? Colors.white : Colors.black12,
                    width: bottomNavBarBottomWidht,
                  ))),
                  child: Icon(
                    Icons.home_outlined,
                  )),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Container(
                  width: bottomNavBarWidth,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    color: _page == 1 ? Colors.white : Colors.black12,
                    width: bottomNavBarBottomWidht,
                  ))),
                  child: Icon(
                    Icons.camera_alt_outlined,
                  )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
                width: bottomNavBarWidth,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: _page == 2 ? Colors.white : Colors.black12,
                          width: bottomNavBarBottomWidht,
                        ))),
                child: Icon(
                  Icons.person_outline_outlined,
                )),
            label: '',
          ),
        ],
      ),
    );
  }
}
