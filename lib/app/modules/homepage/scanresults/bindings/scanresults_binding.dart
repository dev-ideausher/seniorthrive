import 'package:get/get.dart';

import '../controllers/scanresults_controller.dart';

class ScanresultsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanresultsController>(
      () => ScanresultsController(),
    );
  }
}
