import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/modules/login/otpverification/views/otpverification_view.dart';
import 'package:seniorthrive/app/routes/app_pages.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../../../../components/resetPassword.dart';
import '../controllers/forgotpassword_controller.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
  const ForgotpasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: seniorThriveAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Forgot Password",
              style: TextStyleUtil.genSans700(
                fontSize: 24.kh,
              )),
          Text(
              "Select which contact details should we use to reset your password",
              style: TextStyleUtil.genSans400(fontSize: 14.kh)),
          resetviaOTP(onTap: () {
            Get.to(OtpverificationView(
              onPressed: () {
                Get.toNamed(Routes.RESETPASSWORD);
              },
            ));
          }).paddingSymmetric(vertical: 20.kh),
          resetviaEmail(),
        ],
      ).paddingSymmetric(horizontal: 16.kw),
    );
  }
}
