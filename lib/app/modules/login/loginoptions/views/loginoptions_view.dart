import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/routes/app_pages.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../controllers/loginoptions_controller.dart';

class LoginoptionsView extends GetView<LoginoptionsController> {
  const LoginoptionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.brandColor1,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImageView(
              svgPath: ImageConstant.svghomelogo,
            ),
            Text(
              'Personalised approach to home improvements.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.kh,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ).paddingOnly(left: 34.kw, right: 34.kw, bottom: 46.kh),
            CommonImageView(
              imagePath: ImageConstant.pngsignIn,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(24.kw))),
                child: Column(
                  children: [
                    seniorThiveButton(
                      onPressed: () {
                        Get.toNamed(Routes.LOGINWITHEMAIL);
                      },
                      borderRadius: BorderRadius.circular(16.kw),
                      backgroundColor: context.orange,
                      padding: EdgeInsets.all(16.kh),
                      label: 'Login with Email or Phone',
                      style: TextStyle(color: Colors.white),
                    ).paddingOnly(top: 32.kh),
                    seniorThiveButton(
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(16.kw),
                      svgPath: ImageConstant.svggoogle,
                      side: BorderSide(color: context.orange),
                      iconPadding: EdgeInsets.only(right: 8.kw),
                      padding: EdgeInsets.all(16.kh),
                      label: 'Login with Google',
                      style: TextStyle(color: Colors.black),
                    ).paddingOnly(top: 16.kh),
                    seniorThiveButton(
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(16.kw),
                      padding: EdgeInsets.all(16.kh),
                      svgPath: ImageConstant.svgfacebook,
                      iconPadding: EdgeInsets.only(right: 8.kw),
                      side: BorderSide(color: context.orange),
                      label: 'Login with Facebook',
                      style: TextStyle(color: Colors.black),
                    ).paddingOnly(top: 16.kh),
                    seniorThiveButton(
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(16.kw),
                      padding: EdgeInsets.all(16.kh),
                      svgPath: ImageConstant.svgapple,
                      iconPadding: EdgeInsets.only(right: 8.kw),
                      side: BorderSide(color: context.orange),
                      label: 'Login with Facebook',
                      style: TextStyle(color: Colors.black),
                    ).paddingOnly(top: 16.kh, bottom: 32.kh),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16.kh),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.CREATEACCOUNT);
                          },
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                                color: context.orange,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.kh),
                          ),
                        )
                      ],
                    ).paddingOnly(bottom: 25.kh)
                  ],
                ).paddingSymmetric(horizontal: 16.kw),
              ),
            )
          ],
        ).paddingOnly(top: 20.kh),
      ),
    );
  }
}
