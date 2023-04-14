import 'package:e_commerce/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signupController.dart';
import '../../widget/LoginAndSignup/customButtonAuth.dart';
import '../../widget/LoginAndSignup/customTextForm.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
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
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(30),
            //   bottomRight: Radius.circular(30),
            //   bottomLeft: Radius.circular(30),
            //   topRight: Radius.circular(30)
            //),

            color: AppColors.white
        ),

        child: ListView(
          children: [
            const SizedBox(height: 35,),

            CustomTextFormAuth(
              hinttext: "Enter your Username",
              labeltext: 'Username',
              iconData: Icons.person_outline,
              mycontroller: controller.username,
            ),

            CustomTextFormAuth(
              hinttext: "Enter your E-mail",
              labeltext: 'e-mail',
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),

            CustomTextFormAuth(
              hinttext: "Enter your Phone",
              labeltext: 'Phone',
              iconData: Icons.phone_android_outlined,
              mycontroller: controller.phone,
            ),

            //SizedBox(height: 30,),

            CustomTextFormAuth(
              hinttext: "Enter your Password",
              labeltext: 'password',
              iconData: Icons.lock_outline_rounded,
              mycontroller: controller.password,
            ),


            CustomButtonAuth(
              text: "sign up",
              onPressed: () {
                controller.signUp();
              },
            ),

            const SizedBox(height: 15,)

          ],
        ),
      ),
    );
  }
}
