import 'package:flutter/material.dart';
import 'package:fyp_twentyfive/providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'),
      ),
      body: Center(
        child: Text('$user'),
      ),
    );
  }
}
