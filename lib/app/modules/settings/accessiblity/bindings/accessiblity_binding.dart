import 'package:get/get.dart';

import '../controllers/accessiblity_controller.dart';

class AccessiblityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccessiblityController>(
      () => AccessiblityController(),
    );
  }
}
