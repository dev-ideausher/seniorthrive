import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SubscriptionsettingsController extends GetxController {
  //TODO: Implement SubscriptionsettingsController

  final count = 0.obs;
  final List<LinearGradient> planContainerColor = [
    LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xff5c30d9), Color(0xff3662d4)]),
    LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xffd869ab), Color(0xff683094)]),
    LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xff37aca9), Color(0xff0b7f77)])
  ];
  final List<String> planName = ['Plan A', 'Plan B', 'Plan C'];
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
