import 'package:get/get.dart';

class HealthConditionsSettingsController extends GetxController {
  List<String> chronicDiesease = [
    'Diabetes',
    'Thyroid',
    'Asthma',
    'Cancer',
  ].obs;
  RxList selectedItems = [].obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
