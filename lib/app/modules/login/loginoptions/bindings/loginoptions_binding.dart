import 'package:get/get.dart';

import '../controllers/loginoptions_controller.dart';

class LoginoptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginoptionsController>(
      () => LoginoptionsController(),
    );
  }
}
