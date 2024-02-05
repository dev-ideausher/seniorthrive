import 'package:get/get.dart';

import '../controllers/personalinformationsettings_controller.dart';

class PersonalinformationsettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalinformationsettingsController>(
      () => PersonalinformationsettingsController(),
    );
  }
}
