import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../../../../components/common_image_view.dart';
import '../../../../components/seniorThriveTextField.dart';
import '../../../../components/socialMediaRow.dart';
import '../../../../components/successAlertDialog.dart';
import '../../../../constants/customButton.dart';
import '../../../../constants/image_constant.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/createaccount_controller.dart';

class CreateaccountView extends GetView<CreateaccountController> {
  const CreateaccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: seniorThriveAppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Let’s Create Your Account',
                  style: TextStyleUtil.genSans700(fontSize: 24.kh),
                ).paddingOnly(bottom: 8.kh),
                Text("We won’t share your information with anyone",
                    style: TextStyleUtil.genSans400(
                      fontSize: 14,
                    )),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Email',
                        style: TextStyleUtil.genSans600(
                            fontSize: 16.kh, color: Colors.black),
                      ).paddingOnly(bottom: 4.kw),
                      seniorThriveTextField(
                        controller: controller.emailController,
                        validator: (value) => controller.emailValidator(value),
                        svgPath: ImageConstant.svgemail,
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyleUtil.genSans600(
                            fontSize: 16.kh, color: Colors.black),
                      ).paddingOnly(bottom: 4.kw, top: 16.kh),
                      IntlPhoneField(
                        controller: controller.phoneNumberController,
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
                      Text(
                        'Password',
                        style: TextStyleUtil.genSans600(
                            fontSize: 16.kh, color: Colors.black),
                      ).paddingOnly(top: 16.kh, bottom: 4.kh),
                      Obx(
                        () => seniorThriveTextField(
                          controller: controller.passwordController,
                          validator: (value) =>
                              controller.passwordValidator(value),
                          svgPath: ImageConstant.svglock,
                          obscureText: controller.obscureText.value,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              controller.obscureText.toggle();
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
                        onPressed: () {
                          //if (_formKey.currentState!.validate())
                          Get.dialog(successAlert(
                            label: 'Congratulations!',
                            description:
                                'Your account has been created susuccessfully ',
                            buttonLabel: 'Proceed to Set Up My Profile',
                            onPressed: () {
                              Get.offAndToNamed(Routes.PERSONALINFORAMTION);
                            },
                          ));
                        },
                        borderRadius: BorderRadius.circular(16.kw),
                        label: 'Create Account',
                        style: TextStyleUtil.genSans600(
                            fontSize: 18.kh, color: Colors.white),
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
                          Text('Already have an account? ',
                              style: TextStyleUtil.genSans600(
                                  fontSize: 16.kh, color: Colors.black)),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.LOGINOPTIONS);
                            },
                            child: Text('Log In',
                                style: TextStyleUtil.genSans600(
                                    fontSize: 16.kh, color: context.orange)),
                          )
                        ],
                      ).paddingOnly(top: 30.kh),
                    ],
                  ),
                )
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw),
          ),
        ));
  }
}
