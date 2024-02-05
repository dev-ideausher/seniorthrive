import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/routes/app_pages.dart';

class PersonalinforamtionController extends GetxController {
  //TODO: Implement PersonalinforamtionController
  final PageController pageController = PageController();
  final TextEditingController nameController = TextEditingController();
  final List<String> profileSettingName = [
    'Personal Information',
    'Health Condition',
    'Thrive Score'
  ];
  final List<String> profileSettingIcon = [
    ImageConstant.svgperson,
    ImageConstant.svgheartline,
    ImageConstant.svgunfilledstar,
  ];
  final List<String> profileSettingsPage = [
    Routes.PERSONALINFORMATIONSETTINGS,
    Routes.HEALTH_CONDITIONS_SETTINGS,
    Routes.THRIVESCORE
  ];
  final List<String> profileSettingDescription = [
    'Name, DOB, Height,Weight,Health Condition',
    'Health Status, Medications,Allergies',
    'Achivements, Rewards'
  ];

  final List<String> settingName = [
    'Accessibility',
    'Notification',
    'Reset Password'
  ];
  final List<String> settingIcon = [
    ImageConstant.svgsettings,
    ImageConstant.svgnotificationBell,
    ImageConstant.svgnotificationBell,
  ];
  final List<String> settingPage = [
    Routes.ACCESSIBLITY,
    Routes.NOTIFICATIONSETTINGS,
    Routes.RESETPASSWORDSETTING
  ];
  final List<String> settingDescription = [
    'Font Size And Voice Control',
    'General And Home Screen Alert',
    'Create New Password'
  ];

  final List<String> helpName = [
    'Help Center',
    'FAQs',
    'Contact Us',
    'Terms Of USe',
    'Privacy & Policy'
  ];
  final List<String> helpIcon = [
    ImageConstant.svgfaq,
    ImageConstant.svgfaq,
    ImageConstant.svgmultiplePerson,
    ImageConstant.svgdocument,
    ImageConstant.svgdocument,
  ];
  final List<String> helpPage = [
    Routes.HELPCENTER,
    Routes.FAQ,
    Routes.CONTACTUS,
    Routes.TERMSOFUSE,
    Routes.PRIVACYPOLICY,
  ];
  final List<String> helpDescription = [
    'Help Center',
    'Frequently Asked Questions',
    'Questions Or Any Feedback?',
    'Terms Of Use',
    'Privacy Policy',
  ];
  RxString name = ''.obs;
  final currentPageIndex = 0.obs;
  RxInt overAllHealth = 0.obs;
  RxInt chronicConditons = 0.obs;
  RxInt mobilityAids = 0.obs;
  RxInt visionImparement = 0.obs;
  RxInt hearingAids = 0.obs;
  List<String> chronicDiesease = [
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
