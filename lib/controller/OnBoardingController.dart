import 'package:e_commerce/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constants/route.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController{

  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;

    if(currentPage > onBoardingList.length - 1){
      Get.offAllNamed(AppRoute.authentication);
    } else{
      pageController.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 550),
          curve: Curves.easeInOut
      );
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit(){
    pageController = PageController();
    super.onInit();
  }
  
}