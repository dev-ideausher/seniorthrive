import 'package:get/get.dart';

import '../controllers/createaccount_controller.dart';

class CreateaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateaccountController>(
      () => CreateaccountController(),
    );
  }
}
