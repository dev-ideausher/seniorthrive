import 'package:get/get.dart';

import '../controllers/health_conditions_settings_controller.dart';

class HealthConditionsSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HealthConditionsSettingsController>(
      () => HealthConditionsSettingsController(),
    );
  }
}
