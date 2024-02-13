import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetpasswordsettingController extends GetxController {
  //TODO: Implement ResetpasswordsettingController
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  RxBool showPassword = true.obs;
  final count = 0.obs;
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

  void increment() => count.value++;
}
