import 'package:e_commerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'core/constants/color.dart';
import 'routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(

          headline1: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: AppColors.white
          ),

          bodyText1: TextStyle(
              fontSize: 18,
              color: Colors.grey
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: OnBoarding(),
      routes: routes,
    );
  }
}

