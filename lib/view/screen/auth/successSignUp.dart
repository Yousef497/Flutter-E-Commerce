import 'package:e_commerce/core/constants/GradientTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/color.dart';
import '../../widget/LoginAndSignup/customButtonAuth.dart';

class SuccessSignUpPassword extends StatelessWidget {
  const SuccessSignUpPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
        decoration: const BoxDecoration(
          gradient: GradientTheme.primaryGradient
        ),

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Success".tr,
              style: const TextStyle(
                  fontFamily: "Better",
                  //fontWeight: FontWeight.bold,
                  fontSize: 100,
                  color: AppColors.white
              ),
            ),

            const SizedBox(height: 30,),

            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColors.purpleShade,
              ),
            ),

            const SizedBox(height: 15,),

            Text(
              "Thanks for signing up. Your account has been created".tr,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 20
              ),
            ),

            const SizedBox(height: 15,),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: CustomButtonAuth(
                text: "Go to Login",
                onPressed: () {
                  //controller.signUp();
                },
              ),
            ),

          ],
        ),

      ),
    );
  }
}
