import 'package:e_commerce/core/localization/translation.dart';
import 'package:e_commerce/test.dart';
import 'package:e_commerce/view/screen/auth/authentication.dart';
import 'package:e_commerce/view/screen/auth/forgetPassword/forgetPassword.dart';
import 'package:e_commerce/view/screen/auth/login.dart';
import 'package:e_commerce/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'core/constants/color.dart';
import 'core/localization/changeLocal.dart';
import 'core/services/services.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
    overlays: [SystemUiOverlay.top]
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',

      locale: controller.language,
      theme: controller.appTheme,

      home: Language(),
      //home: ForgetPassword(),
      //home: Test(),
      routes: routes,
    );
  }
}

