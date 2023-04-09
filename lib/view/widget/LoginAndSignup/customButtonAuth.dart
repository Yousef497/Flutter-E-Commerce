import 'package:e_commerce/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonAuth({Key? key,
    required this.text,
    this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),

        padding: const EdgeInsets.symmetric(vertical: 10),
        onPressed: onPressed,
        color: AppColors.purple,
        textColor: AppColors.white,
        child: Text(
            text.tr,
        ),

      ),
    );
  }
}
