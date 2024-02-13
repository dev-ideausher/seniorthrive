import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/components/seniorThriveTextField.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../controllers/resetpasswordsetting_controller.dart';

class ResetpasswordsettingView extends GetView<ResetpasswordsettingController> {
  const ResetpasswordsettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ResetpasswordsettingView'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Old Password',
                  style: TextStyleUtil.genSans600(fontSize: 16.kh),
                ),
                seniorThriveTextField(
                  controller: controller.oldPasswordController,
                  prefixIcon: CommonImageView(
                    svgPath: ImageConstant.svglock,
                  ).paddingAll(16.kw),
                  obscureText: controller.showPassword.value,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        controller.showPassword.toggle();
                      },
                      child: controller.showPassword.value == false
                          ? CommonImageView(
                              svgPath: ImageConstant.svgeyeopen,
                            ).paddingAll(16.kw)
                          : CommonImageView(
                              svgPath: ImageConstant.svgeyeslash,
                            ).paddingAll(16.kw)),
                ).paddingOnly(bottom: 16.kh, top: 8.kh),
                Text(
                  'New Password',
                  style: TextStyleUtil.genSans600(fontSize: 16.kh),
                ),
                seniorThriveTextField(
                  controller: controller.newPasswordController,
                  prefixIcon: CommonImageView(
                    svgPath: ImageConstant.svglock,
                  ).paddingAll(16.kw),
                  obscureText: controller.showPassword.value,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        controller.showPassword.toggle();
                      },
                      child: controller.showPassword.value == false
                          ? CommonImageView(
                              svgPath: ImageConstant.svgeyeopen,
                            ).paddingAll(16.kw)
                          : CommonImageView(
                              svgPath: ImageConstant.svgeyeslash,
                            ).paddingAll(16.kw)),
                ).paddingOnly(bottom: 16.kh, top: 8.kh),
                Text(
                  'Confirm Password',
                  style: TextStyleUtil.genSans600(fontSize: 16.kh),
                ),
                seniorThriveTextField(
                  controller: controller.confirmPasswordController,
                  prefixIcon: CommonImageView(
                    svgPath: ImageConstant.svglock,
                  ).paddingAll(16.kw),
                  obscureText: controller.showPassword.value,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        controller.showPassword.toggle();
                      },
                      child: controller.showPassword.value == false
                          ? CommonImageView(
                              svgPath: ImageConstant.svgeyeopen,
                            ).paddingAll(16.kw)
                          : CommonImageView(
                              svgPath: ImageConstant.svgeyeslash,
                            ).paddingAll(16.kw)),
                ).paddingOnly(bottom: 16.kh, top: 8.kh),
                seniorThiveButton(
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(16.kw),
                  label: 'Continue',
                  padding: EdgeInsets.all(16.kw),
                )
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw),
          ),
        ));
  }
}
