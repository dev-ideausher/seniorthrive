import 'package:get/get.dart';

import '../controllers/bottomnavigatorbar_controller.dart';

class BottomnavigatorbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomnavigatorbarController>(
      () => BottomnavigatorbarController(),
    );
  }
}
