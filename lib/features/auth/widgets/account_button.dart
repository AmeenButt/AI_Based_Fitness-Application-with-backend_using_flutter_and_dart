import 'package:flutter/material.dart';
class AccountButton extends StatelessWidget {
  final text;
  final VoidCallback ontap;
  const AccountButton({Key? key, required this.text, required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.0),
          borderRadius: BorderRadius.circular(50),
          color: Colors.white
        ),
        child: OutlinedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black12.withOpacity(0.03),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )
          ),
          onPressed: ontap,
          child: Text(text, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.normal),),
        ),
      ),
    );
  }
}
