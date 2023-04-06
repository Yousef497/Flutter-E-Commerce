import 'package:e_commerce/core/constants/color.dart';
import 'package:e_commerce/core/constants/route.dart';
import 'package:e_commerce/core/localization/changeLocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/LanguageChoice/customButtonLang.dart';
import '../widget/LanguageChoice/languageHeader.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.purple,
        ),
        child: Column(
          children: [
            const SizedBox(height: 90,),
            const LanguageHeader(),
            const SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(90)
                  )
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    CustomButtonLang(textbutton: "English", onPressed: () {
                     controller.changeLang("en");
                     Get.toNamed(AppRoute.onBoarding);
                    }),
                    
                    const SizedBox(width: 40,),
                    
                    CustomButtonLang(textbutton: "اللغة العربية", onPressed: () {
                      controller.changeLang("ar");
                      Get.toNamed(AppRoute.onBoarding);
                    }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
