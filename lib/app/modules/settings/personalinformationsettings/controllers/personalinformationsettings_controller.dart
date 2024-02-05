import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PersonalinformationsettingsController extends GetxController {
  //TODO: Implement PersonalinformationsettingsController
  RxString name = ''.obs;
  RxString selectedImage = ''.obs;
  RxList<bool> units = [true, false].obs;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImage.value = pickedFile.path;
    } else {
      print('No image selected.');
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
