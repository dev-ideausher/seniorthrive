import 'package:get/get.dart';

import '../controllers/previewvideo_controller.dart';

class PreviewvideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreviewvideoController>(
      () => PreviewvideoController(),
    );
  }
}
