import 'package:flutter/material.dart';
import 'package:fyp_twentyfive/pages/Menu%20Screen/ai_based_detector.dart';
import 'package:fyp_twentyfive/pages/Menu%20Screen/designed_for_you.dart';
import 'package:fyp_twentyfive/pages/Menu%20Screen/suggested_exercises_for_you.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreen();
}

class _MenuScreen extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black87,
            title: Text('AI Based Fitness Trainer'),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            // AI Based Detector
            AiBasedDetector(),
            SizedBox(
              height: 10,
            ),
            // Designed For You
            Padding(padding: EdgeInsets.only(left: 10),
            child: Text("Designed For You",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),),),
            SizedBox(
              height: 10,
            ),
            DesignedForYou(),
            // Exercises
            Padding(padding: EdgeInsets.only(left: 10),
              child: Text("Exercises Suggested For You",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),),),
            SizedBox(
              height: 10,
            ),
            SuggestedExercises(),
          ],
        ));
  }
}