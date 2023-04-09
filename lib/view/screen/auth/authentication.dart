import 'package:e_commerce/core/constants/color.dart';
import 'package:e_commerce/view/screen/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/GradientTheme.dart';
import '../../../core/constants/imageassets.dart';
import '../../widget/LoginAndSignup/customTabBar.dart';
import '../../widget/LoginAndSignup/logoAuth.dart';
import 'login.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },

          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: GradientTheme.primaryGradient
            ),

            child: Column(
              mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: LogoAuth()
                ),

                Text(
                  "welcome".tr,
                  style: const TextStyle(
                    fontFamily: "Better",
                    //fontWeight: FontWeight.bold,
                    fontSize: 80,
                    color: AppColors.white
                  ),
                ),

                DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      const CustomTabBar(),

                      const SizedBox(height: 15,),

                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.45,
                        width: MediaQuery.of(context).size.width*0.8,
                        //color: AppColors.white,

                        child: const TabBarView(
                          children: [
                            Login(),
                            Register()
                          ],
                        ),
                      )

                    ],
                  ),
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}
