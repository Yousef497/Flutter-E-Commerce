import 'package:e_commerce/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.06,
      width: MediaQuery.of(context).size.width*0.61,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: AppColors.tabBarGray,
          child: TabBar(
            tabs: [
              Tab(
                text: "login".tr,
              ),

              Tab(
                text: "register".tr,
              )
            ],

            labelPadding: const EdgeInsets.symmetric(vertical: 4),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.violet,
            ),

            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.black,
            labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),

            unselectedLabelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
