import 'package:flutter/material.dart';
import '../../commons/widgets/size_manager.dart';
class CardioExercises extends StatelessWidget {
  const CardioExercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizemanager = SizeManager(context);
    return Container(
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: sizemanager.scaledWidth(38),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.0),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('images/pushups.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    'Push-Up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 20,right:10, left: 10),
                  child: Text(
                    'Best for triceps, pectoral muscles, and shoulders.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 10),
            width: sizemanager.scaledWidth(38),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.0),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('images/pullups.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 105),
                  child: Text(
                    'Pull-Ups',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'Best for lats and biceps primarily, while also recruiting your deltoids, rhomboids, and core.',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 10),
            width: sizemanager.scaledWidth(38),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.0),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('images/squats.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 105),
                  child: Text(
                    'Squats',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'Best for buttocks, Front thighs and Back thighs.',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 10),
            width: sizemanager.scaledWidth(38),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.0),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('images/crunch.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 105),
                  child: Text(
                    'Crunch',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'The crunch is an abdominal exercise that works the rectus abdominis muscle. It enables both building "six-pack" abs and tightening the belly..',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}