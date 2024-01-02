import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../constants/image_constant.dart';
import 'common_image_view.dart';

class socialMediaRow extends StatelessWidget {
  const socialMediaRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: context.lightgrey,
              borderRadius: BorderRadius.circular(16.kw)),
          child: CommonImageView(
            svgPath: ImageConstant.svggoogle,
          ).paddingAll(16.kw),
        ),
        Container(
          decoration: BoxDecoration(
              color: context.lightgrey,
              borderRadius: BorderRadius.circular(16.kw)),
          child: CommonImageView(
            svgPath: ImageConstant.svgfacebook,
          ).paddingAll(16.kw),
        ).paddingSymmetric(horizontal: 16.kw),
        Container(
          decoration: BoxDecoration(
              color: context.lightgrey,
              borderRadius: BorderRadius.circular(16.kw)),
          child: CommonImageView(
            svgPath: ImageConstant.svgapple,
          ).paddingAll(16.kw),
        ),
      ],
    );
  }
}
