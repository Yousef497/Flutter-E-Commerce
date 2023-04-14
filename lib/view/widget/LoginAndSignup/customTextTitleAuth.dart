import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constants/color.dart';

class CustomTextTitleAuth extends StatelessWidget {

  final String text;
  const CustomTextTitleAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontFamily: "Better",
          //fontWeight: FontWeight.bold,
          fontSize: 80,
          color: AppColors.black
      ),
    );
  }
}
