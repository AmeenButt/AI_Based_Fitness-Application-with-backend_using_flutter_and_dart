import 'package:flutter/material.dart';
import '../../commons/widgets/size_manager.dart';
class DesignedForYou extends StatelessWidget {
  const DesignedForYou({Key? key}) : super(key: key);

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
                  image: AssetImage('images/bmi-calculator1.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    'BMI calculator',
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
                    'It shows your Body Mass index value based on your Height, Age & Weight.',
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
                  image: AssetImage('images/progress-tracker1.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 105),
                  child: Text(
                    'Progress Tracker',
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
                    'It shows all the details about your weight gain or loss on Daily, Weekly and Monthly to keep you motivated.',
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
                  image: AssetImage('images/workout-planning.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 105),
                  child: Text(
                    'Workout Planning',
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
                    'Create your own Custom workout plans according to your needs or select any of the recommended workout plans designed for you.',
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
                  image: AssetImage('images/diet-planning.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 105),
                  child: Text(
                    'Diet Plans',
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
                    'Select any of the recommended Diet plans specially designed for you to get best outcome in minimal time.',
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