import 'package:get/get.dart';

class ScanresultsController extends GetxController {
  RxInt currentStep = 0.obs;

  @override
  void onInit() {
    super.onInit();
    incrementCurrentStep();
  }

  void incrementCurrentStep() async {
    await Future.delayed(Duration(seconds: 3));
    currentStep.value++; // Increment currentStep by 1
    print(currentStep);

    if (currentStep.value < 2) {
      // Continue incrementing if not reached the desired value
      incrementCurrentStep();
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
