import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PersonalinforamtionController extends GetxController {
  //TODO: Implement PersonalinforamtionController
  final PageController pageController = PageController();
  final currentPageIndex = 0.obs;
  RxInt overAllHealth = 0.obs;
  RxInt chronicConditons = 0.obs;
  RxInt mobilityAids = 0.obs;
  RxInt visionImparement = 0.obs;
  RxInt hearingAids = 0.obs;
  List<String> items = [
    'Diabetes',
    'Thyroid',
    'Asthma',
    'Cancer',
  ].obs;
  RxList selectedItems = [].obs;

  RxString selectedImage = ''.obs;
  RxList<bool> units = [true, false].obs;
  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImage.value = pickedFile.path;
    } else {
      print('No image selected.');
    }
  }

  // void toggleCheckbox() {
  //   isChecked.toggle();
  // }
  //
  // @override
  // void onInit() {
  //   super.onInit();
  // }
  //
  // @override
  // void onReady() {
  //   super.onReady();
  // }
  //
  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
