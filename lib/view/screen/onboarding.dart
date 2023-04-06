import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/OnBoardingController.dart';
import '../../core/constants/color.dart';
import '../widget/onBoarding/CustomButton.dart';
import '../widget/onBoarding/CustomSlider.dart';
import '../widget/onBoarding/DotsController.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors.white,
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: CustomSliderOnBoarding()
              ),

              const SizedBox(height: 10,),

              Container(
                height: 100,
                color: AppColors.white,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 4,),
                    CustomButtonOnBoarding()

                  ],
                ),
              )

            ],
          ),
        )
      ),
    );
  }
}
