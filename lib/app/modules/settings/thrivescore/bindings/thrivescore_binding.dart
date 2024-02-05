import 'package:get/get.dart';

import '../controllers/thrivescore_controller.dart';

class ThrivescoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThrivescoreController>(
      () => ThrivescoreController(),
    );
  }
}
