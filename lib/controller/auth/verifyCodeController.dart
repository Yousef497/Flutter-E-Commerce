import 'package:e_commerce/core/constants/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController{

  late String verifyCode;

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPasswrod);
  }

  @override
  checkCode() {
    // TODO: implement checkEmail
    throw UnimplementedError();
  }

  @override
  void onInit() {
    super.onInit();
  }

}