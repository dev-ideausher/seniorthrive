import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/modules/profile/personalinforamtion/views/personalinforamtion_view.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../controllers/otpverification_controller.dart';

class OtpverificationView extends GetView<OtpverificationController> {
  final dynamic Function()? onPressed;
  const OtpverificationView({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: seniorThriveAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Verification Code',
            style:
                TextStyleUtil.genSans700(fontSize: 24.kh, color: Colors.black),
          ),
          Text(
            'You need to enter 6-digit code that we have sent to your email address.',
            style:
                TextStyleUtil.genSans400(fontSize: 14.kh, color: Colors.black),
          ).paddingOnly(top: 22.kh, bottom: 22.kh),
          OtpTextField(
            numberOfFields: 6,
            fieldWidth: 50.kw,
            fillColor: context.lightgrey,
            focusedBorderColor: context.orange,
            filled: true,
            showFieldAsBox: true,
            borderRadius: BorderRadius.circular(16.kw),
            onCodeChanged: (String code) {},
          ),
          seniorThiveButton(
            onPressed: onPressed ??
                () {
                  Get.to(PersonalinforamtionView());
                },
            borderRadius: BorderRadius.circular(16.kw),
            label: 'Submit',
            padding: EdgeInsets.all(16.kh),
          ).paddingSymmetric(vertical: 38.kh),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Haven’t received code? ",
                  style: TextStyleUtil.genSans600(
                      fontSize: 16.kh, color: Colors.black)),
              GestureDetector(
                onTap: () {},
                child: Text("Resend Again",
                    style: TextStyleUtil.genSans600(
                        fontSize: 16.kh, color: context.orange)),
              )
            ],
          )
        ],
      ).paddingOnly(left: 15.kw, right: 15.kw),
    );
  }
}
