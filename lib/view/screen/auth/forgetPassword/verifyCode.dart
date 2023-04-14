import 'package:e_commerce/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/verifyCodeController.dart';
import '../../../widget/LoginAndSignup/customTextBodyAuth.dart';
import '../../../widget/LoginAndSignup/customTextTitleAuth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.purple,
        elevation: 0.0,
        title: Text(
          "Verification Code".tr,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: ListView(
          children: [

            const SizedBox(height: 20,),

            const CustomTextTitleAuth(text: 'Check Code',),

            const SizedBox(height: 10,),

            const CustomTextBodyAuth(text: 'Please enter the digit code sent to the provided Email',),

            const SizedBox(height: 30,),

            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                controller.goToResetPassword();
              }, // end onSubmit
            ),

          ],

        ),
      ),

    );
  }
}
