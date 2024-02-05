import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../services/text_style_util.dart';
import '../common_image_view.dart';

class peachContainer extends StatelessWidget {
  final String description;
  final String? svgPath;
  final String? pngPath;
  final Border? border;
  peachContainer({
    super.key,
    required this.description,
    this.svgPath,
    this.border,
    this.pngPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.kw),
          border: border,
          color: context.pink.withOpacity(0.3)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12.kw),
              child: CommonImageView(
                svgPath: svgPath,
                imagePath: pngPath,
              )).paddingAll(10.kw),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: TextStyleUtil.genSans400(fontSize: 14.kh),
                ).paddingOnly(right: 14.kh, top: 16.kh, bottom: 16.kh)
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
