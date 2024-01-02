import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/services/colors.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: SafeArea(
        child: Center(
          child: CommonImageView(
            imagePath: ImageConstant.pngLogo,
          ),
        ),
      ),
    );
  }
}
