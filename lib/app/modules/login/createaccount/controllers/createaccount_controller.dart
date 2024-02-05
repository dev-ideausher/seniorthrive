import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateaccountController extends GetxController {
  //TODO: Implement CreateaccountController
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final count = 0.obs;
  var obscureText = true.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  // }
  //
  // @override
  // void onReady() {
  //   super.onReady();
  // }
  //
  // @override
  // void onClose() {
  //   super.onClose();
  // }
  emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter email";
    } else if (!value.isEmail) {
      return "Please enter a valid email";
    }
  }

  passwordValidator(String? value) {
    if (value == null || value.isEmpty || value.length < 8) {
      return "Please enter password";
    }
  }

  void increment() => count.value++;
}
