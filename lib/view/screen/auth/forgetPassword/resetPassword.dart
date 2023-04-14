import 'package:e_commerce/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgetPasswordController.dart';
import '../../../../controller/auth/resetPasswordController.dart';
import '../../../widget/LoginAndSignup/customButtonAuth.dart';
import '../../../widget/LoginAndSignup/customTextBodyAuth.dart';
import '../../../widget/LoginAndSignup/customTextForm.dart';
import '../../../widget/LoginAndSignup/customTextTitleAuth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.purple,
        elevation: 0.0,
        title: Text(
          "Reset Password".tr,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [

            const SizedBox(height: 20,),

            const CustomTextTitleAuth(text: 'New Password',),

            const SizedBox(height: 10,),

            const CustomTextBodyAuth(text: 'Please Enter new Password',),

            const SizedBox(height: 30,),

            CustomTextFormAuth(
              hinttext: "Enter new Password",
              labeltext: 'password',
              iconData: Icons.lock_outline_rounded,
              mycontroller: controller.password,
            ),

            CustomTextFormAuth(
              hinttext: "Re-Enter new Password",
              labeltext: 'password',
              iconData: Icons.lock_outline_rounded,
              mycontroller: controller.password,
            ),

            CustomButtonAuth(
              text: "Save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            )

          ],

        ),
      ),

    );
  }
}
