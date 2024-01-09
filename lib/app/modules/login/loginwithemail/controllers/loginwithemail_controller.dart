import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginwithemailController extends GetxController {
  //TODO: Implement LoginwithemailController
  final PageController pageController = PageController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isEmailSelected = true.obs;
  RxBool isPhoneNumberSelected = true.obs;

  final currentPageIndex = 0.obs;
  var obscureText = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void toggleSelected(int index) {
    if (index == 0) {
      isEmailSelected.value = true;
      isPhoneNumberSelected.value = false;
    } else {
      isEmailSelected.value = false;
      isPhoneNumberSelected.value = true;
    }
    update();
  }
}
