import 'package:flutter/material.dart';
import '../../commons/widgets/size_manager.dart';
class AiBasedDetector extends StatelessWidget {
  const AiBasedDetector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizemanager = SizeManager(context);
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: sizemanager.scaledHeight(30),
      width: sizemanager.scaledWidth(95),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.0),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('images/background1.jpg'),
            fit: BoxFit.cover,
          )),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 130, right: 150),
            child: Text(
              'AI posture Correction',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 100, left: 10),
            child: Text(
              'An AI Based Feature which detect your body posture through camera and your exercise posture if required.',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
