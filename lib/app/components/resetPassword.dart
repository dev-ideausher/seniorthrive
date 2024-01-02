import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../constants/image_constant.dart';
import '../services/text_style_util.dart';
import 'common_image_view.dart';

class resetviaEmail extends StatelessWidget {
  final void Function()? onTap;
  const resetviaEmail({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: context.lightgrey,
            borderRadius: BorderRadius.circular(16.kw)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CommonImageView(
                      svgPath: ImageConstant.svgemailfilled,
                    ).paddingOnly(right: 8.kw),
                    Text("via Email",
                        style: TextStyleUtil.genSans600(
                          fontSize: 14.kh,
                        )),
                  ],
                ),
                Icon(
                  CupertinoIcons.chevron_forward,
                  color: context.grey,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Send me an email to reset my password",
                  style: TextStyleUtil.genSans400(fontSize: 16.kh),
                ),
                Text(
                  "georgia******@example.com",
                  style: TextStyleUtil.genSans400(fontSize: 16.kh),
                ),
              ],
            ).paddingSymmetric(horizontal: 35.kw),
          ],
        ).paddingSymmetric(horizontal: 12.kw, vertical: 16.kh),
      ),
    );
  }
}

class resetviaOTP extends StatelessWidget {
  final void Function()? onTap;
  const resetviaOTP({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: context.lightPeach,
            borderRadius: BorderRadius.circular(16.kw)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CommonImageView(
                      imagePath: ImageConstant.pngonmessage,
                    ).paddingOnly(right: 8.kw),
                    Text("via SMS",
                        style: TextStyleUtil.genSans600(
                          fontSize: 14.kh,
                        )),
                  ],
                ),
                Icon(
                  CupertinoIcons.chevron_forward,
                  color: Colors.white,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Send me a text message to reset my password",
                  style: TextStyleUtil.genSans400(fontSize: 16.kh),
                ),
                Text(
                  "+91 123456789",
                  style: TextStyleUtil.genSans400(fontSize: 16.kh),
                ),
              ],
            ).paddingSymmetric(horizontal: 35.kw),
          ],
        ).paddingSymmetric(horizontal: 12.kw, vertical: 16.kh),
      ),
    );
  }
}
