import 'package:get/get.dart';

import '../controllers/subscriptionsettings_controller.dart';

class SubscriptionsettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscriptionsettingsController>(
      () => SubscriptionsettingsController(),
    );
  }
}
