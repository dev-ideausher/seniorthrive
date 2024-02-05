import 'package:get/get.dart';

import '../controllers/recommendedmeasures_controller.dart';

class RecommendedmeasuresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecommendedmeasuresController>(
      () => RecommendedmeasuresController(),
    );
  }
}
