import 'package:flutter/material.dart';
import 'package:fyp_twentyfive/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'pages/Landing page/background.dart';
void main() {
  runApp(MultiProvider(providers: [ ChangeNotifierProvider(create: (context) => UserProvider()
  ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Landing Page",
      home: Background(),
    );
  }
}