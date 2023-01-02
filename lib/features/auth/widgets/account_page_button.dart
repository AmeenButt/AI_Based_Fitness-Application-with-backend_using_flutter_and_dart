import 'package:flutter/material.dart';
import '../../auth/widgets/account_button.dart';
class TopButtons extends StatefulWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AccountButton(text: 'Support', ontap: (){},),
        AccountButton(text: 'Logout', ontap: (){},),
      ],
    );
  }
}
