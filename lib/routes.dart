import 'package:e_commerce/view/screen/auth/authentication.dart';
import 'package:e_commerce/view/screen/auth/checkMail.dart';
import 'package:e_commerce/view/screen/auth/forgetPassword/forgetPassword.dart';
import 'package:e_commerce/view/screen/auth/forgetPassword/verifyCode.dart';
import 'package:e_commerce/view/screen/auth/login.dart';
import 'package:e_commerce/view/screen/auth/register.dart';
import 'package:e_commerce/view/screen/auth/forgetPassword/resetPassword.dart';
import 'package:e_commerce/view/screen/auth/forgetPassword/successResetPassword.dart';
import 'package:e_commerce/view/screen/auth/successSignUp.dart';
import 'package:e_commerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

import 'core/constants/route.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoute.login : (context) => const Login(),
  AppRoute.register : (context) => const Register(),
  AppRoute.authentication : (context) => const Authentication(),
  AppRoute.forgetPasswrod : (context) => const ForgetPassword(),
  AppRoute.verifyCode : (context) => const VerifyCode(),
  AppRoute.checkEmail : (context) => const CheckEmail(),
  AppRoute.resetPasswrod : (context) => const ResetPassword(),
  AppRoute.successSignUp : (context) => const SuccessSignUpPassword(),
  AppRoute.successResetPassword : (context) => const SuccessResetPassword(),

  // OnBoarding
  AppRoute.onBoarding : (context) => const OnBoarding(),
};