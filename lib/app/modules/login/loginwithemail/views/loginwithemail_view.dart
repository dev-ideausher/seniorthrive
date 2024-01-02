import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/routes/app_pages.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../components/seniorThriveTextField.dart';
import '../../../../components/socialMediaRow.dart';
import '../../../../constants/loginPageIndicator.dart';
import '../../../../services/text_style_util.dart';
import '../controllers/loginwithemail_controller.dart';

class LoginwithemailView extends GetView<LoginwithemailController> {
  const LoginwithemailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LongPressGestureRecognizer _longPressGestureRecognizer =
        LongPressGestureRecognizer();
    return Scaffold(
      appBar: seniorThriveAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Login Your Account",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )),
              Text(
                  "Welcome to Senior Thrive, please put your login credentials below to start using the app",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )).paddingOnly(top: 8.kh, bottom: 30.kh),
              loginPageIndicator(controller: controller)
                  .paddingOnly(bottom: 30.kh),
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: (index) {
                    controller.currentPageIndex.value = index;
                  },
                  children: [
                    emailLoginPage(controller: controller),
                    otpLoginPage(controller: controller),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class otpLoginPage extends StatelessWidget {
  const otpLoginPage({
    super.key,
    required this.controller,
  });

  final LoginwithemailController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          IntlPhoneField(
            controller: controller.phoneNumber,
            flagsButtonPadding: EdgeInsets.only(left: 16.kw),
            disableLengthCheck: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.grey),
                  borderRadius: BorderRadius.circular(16.kw)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.orange),
                  borderRadius: BorderRadius.circular(16.kw)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(16.kw)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(16.kw)),
            ),
            dropdownIconPosition: IconPosition.trailing,
            initialCountryCode: 'IN',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
          seniorThiveButton(
            onPressed: () {
              Get.toNamed(Routes.OTPVERIFICATION);
            },
            borderRadius: BorderRadius.circular(16.kw),
            label: 'Send OTP',
            style: TextStyleUtil.genSans600(fontSize: 18.kh),
            padding: EdgeInsets.all(16.kh),
          ).paddingOnly(top: 30.kh),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  decoration: BoxDecoration(
                    color: context.orange,
                  ),
                ),
              ),
              Text(
                'Or continue with',
                style: TextStyleUtil.genSans400(
                    fontSize: 14.kh, color: Colors.black),
              ).paddingSymmetric(horizontal: 20.kw),
              Expanded(
                child: Container(
                  height: 2,
                  decoration: BoxDecoration(color: context.orange),
                ),
              ),
            ],
          ).paddingOnly(top: 30.kh, bottom: 30.kh),
          socialMediaRow(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account? ',
                  style: TextStyleUtil.genSans600(
                      fontSize: 16.kh, color: Colors.black)),
              GestureDetector(
                child: Text('Create Account',
                    style: TextStyleUtil.genSans600(
                        fontSize: 16.kh, color: context.orange)),
              )
            ],
          ).paddingOnly(top: 30.kh),
        ],
      ),
    );
  }
}

class emailLoginPage extends StatelessWidget {
  const emailLoginPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginwithemailController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Email',
            style:
                TextStyleUtil.genSans600(fontSize: 16.kh, color: Colors.black),
          ).paddingOnly(bottom: 4.kw),
          seniorThriveTextField(
            controller: controller.emailController,
            svgPath: ImageConstant.svgemail,
          ),
          Text(
            'Password',
            style:
                TextStyleUtil.genSans600(fontSize: 16.kh, color: Colors.black),
          ).paddingOnly(top: 16.kh, bottom: 4.kh),
          Obx(
            () => seniorThriveTextField(
              controller: controller.passwordController,
              svgPath: ImageConstant.svglock,
              obscureText: controller.obscureText.value,
              suffixIcon: GestureDetector(
                onLongPress: () {
                  controller.togglePasswordVisibility();
                },
                onLongPressUp: () {
                  controller.togglePasswordVisibility();
                },
                child: CommonImageView(
                  svgPath: ImageConstant.svgeyeslash,
                ).paddingAll(16.kw),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.FORGOTPASSWORD);
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyleUtil.genSans600(
                      fontSize: 14.kh, color: context.orange),
                ),
              ),
            ],
          ),
          seniorThiveButton(
            onPressed: () {},
            borderRadius: BorderRadius.circular(16.kw),
            label: 'Login',
            style: TextStyleUtil.genSans600(fontSize: 18.kh),
            padding: EdgeInsets.all(16.kh),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  decoration: BoxDecoration(
                    color: context.orange,
                  ),
                ),
              ),
              Text(
                'Or continue with',
                style: TextStyleUtil.genSans400(
                    fontSize: 14.kh, color: Colors.black),
              ).paddingSymmetric(horizontal: 20.kw),
              Expanded(
                child: Container(
                  height: 2,
                  decoration: BoxDecoration(color: context.orange),
                ),
              ),
            ],
          ).paddingOnly(top: 30.kh, bottom: 30.kh),
          socialMediaRow(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account? ',
                  style: TextStyleUtil.genSans600(
                      fontSize: 16.kh, color: Colors.black)),
              GestureDetector(
                child: Text('Create Account',
                    style: TextStyleUtil.genSans600(
                        fontSize: 16.kh, color: context.orange)),
              )
            ],
          ).paddingOnly(top: 30.kh),
        ],
      ),
    );
  }
}
