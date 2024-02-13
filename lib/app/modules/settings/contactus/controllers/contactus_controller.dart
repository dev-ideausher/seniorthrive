import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContactusController extends GetxController {
  //TODO: Implement ContactusController

  final count = 0.obs;
  final RxString enteredText = ''.obs;
  final TextEditingController feedbackController = TextEditingController();
  final RxBool isDisabled = true.obs;
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
