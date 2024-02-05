import 'package:get/get.dart';

import '../controllers/resetpasswordsetting_controller.dart';

class ResetpasswordsettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetpasswordsettingController>(
      () => ResetpasswordsettingController(),
    );
  }
}
