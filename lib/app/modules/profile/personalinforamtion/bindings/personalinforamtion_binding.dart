import 'package:get/get.dart';

import '../controllers/personalinforamtion_controller.dart';

class PersonalinforamtionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalinforamtionController>(
      () => PersonalinforamtionController(),
    );
  }
}
