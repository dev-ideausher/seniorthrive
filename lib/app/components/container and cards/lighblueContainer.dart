import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../constants/image_constant.dart';
import '../../services/text_style_util.dart';
import '../common_image_view.dart';

class lighblueContainer extends StatelessWidget {
  const lighblueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.kw),
          color: context.blue.withOpacity(0.3)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12.kw),
              child: CommonImageView(
                svgPath: ImageConstant.svghelpfultips,
              )).paddingAll(10.kw),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Not sure where to start?',
                  style: TextStyleUtil.genSans800(fontSize: 15.kh),
                ),
                Text(
                  'Check the Help section for guidance and tips on using Senior Thrive.',
                  style: TextStyleUtil.genSans400(fontSize: 15.kh),
                )
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: context.blue,
          )
        ],
      ).paddingOnly(right: 10.kw),
    );
  }
}
