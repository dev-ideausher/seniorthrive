import 'package:get/get.dart';

class BottomnavigatorbarController extends GetxController {
  //TODO: Implement BottomnavigatorbarController

  var selectedPageIndex = 0.obs;
  RxDouble thriveScore = 4.0.obs;
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
