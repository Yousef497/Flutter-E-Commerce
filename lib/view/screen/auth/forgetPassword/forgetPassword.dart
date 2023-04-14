import 'package:e_commerce/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgetPasswordController.dart';
import '../../../widget/LoginAndSignup/customButtonAuth.dart';
import '../../../widget/LoginAndSignup/customTextBodyAuth.dart';
import '../../../widget/LoginAndSignup/customTextForm.dart';
import '../../../widget/LoginAndSignup/customTextTitleAuth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.purple,
        elevation: 0.0,
        title: Text(
          "Forget Password".tr,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [

            const SizedBox(height: 20,),

            const CustomTextTitleAuth(text: 'Check Email',),

            const SizedBox(height: 10,),

            const CustomTextBodyAuth(text: 'Please enter your Email address to receive a Verification Code',),

            const SizedBox(height: 30,),

            CustomTextFormAuth(
              hinttext: "Enter your E-mail",
              labeltext: 'e-mail',
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),
            
            CustomButtonAuth(
              text: "Check",
              onPressed: () {
                controller.goToVerifyCode();
              },
            )

          ],

        ),
      ),

    );
  }
}
