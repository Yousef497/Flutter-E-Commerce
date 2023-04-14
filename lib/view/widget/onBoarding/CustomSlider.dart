import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/OnBoardingController.dart';
import '../../../core/constants/color.dart';
import '../../../core/functions/clippers.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.85,
            width: double.infinity,
            color: AppColors.white,
            child: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: ClipPath(
                      clipper: WaveClipper(),
                      child: Container(
                        color: AppColors.purpleShade,
                        height: 315,
                      ),
                    ),
                  ),

                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      color: AppColors.purple,
                      height: 295,
                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),

                        Text(
                          onBoardingList[i].title!.tr,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: AppColors.white
                          ),
                        ),

                        const SizedBox(height: 20,),

                        Image.asset(
                          onBoardingList[i].image!,
                          height: MediaQuery.of(context).size.height*0.64,
                        ),

                        const SizedBox(height: 15,),

                        Text(
                          onBoardingList[i].body!.tr,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                          ),
                        ),

                      ],
                    ),
                  ),

                ]
            ),
          ),
        ],
      ),
    );
  }
}
