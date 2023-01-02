import 'package:flutter/material.dart';
import 'package:fyp_twentyfive/features/auth/services/auth_service.dart';
import 'package:fyp_twentyfive/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'pages/Landing page/background.dart';
import 'commons/widgets/bottombar.dart';
void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  void initState() {
    authService.getUSerData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Landing Page",
        home: Provider.of<UserProvider>(context).user.token.isNotEmpty
            ? BottomBar()
            : Background());
  }
}
