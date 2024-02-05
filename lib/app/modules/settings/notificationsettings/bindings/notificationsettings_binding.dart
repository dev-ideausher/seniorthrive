import 'package:get/get.dart';

import '../controllers/notificationsettings_controller.dart';

class NotificationsettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsettingsController>(
      () => NotificationsettingsController(),
    );
  }
}
