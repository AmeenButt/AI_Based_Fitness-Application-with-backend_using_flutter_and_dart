import 'package:flutter/material.dart';
import '../../commons/widgets/size_manager.dart';
class SuggestedExercises extends StatelessWidget {
  const SuggestedExercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizemanager = SizeManager(context);
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: sizemanager.scaledWidth(47),
          height: sizemanager.scaledHeight(30),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 0.0),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('images/bicep-curl.jpg'),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  'Bicep Curl',
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
                  'To Build and shape your Bicep muscles.',
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
        Container(
          margin: EdgeInsets.only(left: 5),
          width: sizemanager.scaledWidth(45),
          height: sizemanager.scaledHeight(30),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 0.0),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('images/tricep-rope.jpg'),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 105),
                child: Text(
                  'Triceps Curl',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  'To Build and shape your Triceps Muscles.',
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
    );
  }
}
