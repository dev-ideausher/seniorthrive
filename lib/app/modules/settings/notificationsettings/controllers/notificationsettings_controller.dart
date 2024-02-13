import 'package:get/get.dart';

class NotificationsettingsController extends GetxController {
  //TODO: Implement NotificationsettingsController

  final count = 0.obs;
  RxBool notificationSwitchValue = false.obs;
  RxBool alertSwitchValue = false.obs;
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
