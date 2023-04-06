import 'package:e_commerce/controller/OnBoardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onBoardingList.length, (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 100),
              width: controller.currentPage == index ? 20 : 8,
              height: 8,
              decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(30)
              ),
            )
            )
          ],
        )
    );
  }
}
