import 'package:e_commerce/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/loginController.dart';
import '../../widget/LoginAndSignup/customButtonAuth.dart';
import '../../widget/LoginAndSignup/customTextForm.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Opacity(
      opacity: 0.6,
      child: Container(
        //color: AppColors.primaryColor,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(
          //vertical: 15,
          horizontal: 25
        ),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),

          color: AppColors.white
        ),

        child: ListView(
          children: [
            const SizedBox(height: 35,),

            CustomTextFormAuth(
              hinttext: "Enter your E-mail",
              labeltext: 'e-mail',
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),

            //SizedBox(height: 30,),

            CustomTextFormAuth(
              hinttext: "Enter your Password",
              labeltext: 'password',
              iconData: Icons.lock_outline_rounded,
              mycontroller: controller.password,
            ),

            InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: Text(
                "Forget Password".tr,
                textAlign: TextAlign.end,
              ),
            ),

            CustomButtonAuth(
              text: "sign in",
              onPressed: () {
                controller.login();
              },
            ),

          ],
        ),
      ),
    );
  }
}
