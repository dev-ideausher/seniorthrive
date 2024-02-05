import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../constants/image_constant.dart';
import '../services/text_style_util.dart';
import 'common_image_view.dart';

class senoirThriveBottomSheet extends StatelessWidget {
  final void Function()? onTap;
  const senoirThriveBottomSheet({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.kw))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Scan Your Home",
                  style: TextStyleUtil.genSans700(
                    fontSize: 24.kh,
                  )),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: context.darkgrey),
                      child: Icon(
                        CupertinoIcons.xmark,
                        color: Colors.white,
                        size: 24.kw,
                      ).paddingAll(5.kw)))
            ],
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Scan your home to identify safety hazards and receive personalized improvement suggestions.',
                  style: TextStyleUtil.genSans400(fontSize: 14.kh),
                ),
                TextSpan(
                  text: 'Watch a quick video to see how easy it is. ',
                  style: TextStyleUtil.genSans600(fontSize: 14.kh),
                ),
              ],
            ),
          ),
          Row(
            children: [
              seniorThiveButton(
                onPressed: () {},
                borderRadius: BorderRadius.circular(7.kw),
                label: 'Watch Tutorial',
                style: TextStyleUtil.genSans400(
                    fontSize: 14.kh, color: context.blue),
                backgroundColor: context.lightblue,
                side: BorderSide(color: context.blue),
                padding:
                    EdgeInsets.symmetric(horizontal: 12.kw, vertical: 8.kh),
              ),
            ],
          ).paddingOnly(top: 18.kh, bottom: 18.kh),
          GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.kw),
                  color: context.pink.withOpacity(0.1)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: CommonImageView(
                      svgPath: ImageConstant.svgvideocam,
                      svgColor: context.blue,
                    ).paddingAll(8.kw),
                  ).paddingOnly(right: 12.kw),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Take a video of room',
                          style: TextStyleUtil.genSans600(fontSize: 16.kh),
                        ),
                        Text(
                          'Capture a room to start making it safer and more accessible',
                          style: TextStyleUtil.genSans400(
                              fontSize: 14.kh, color: context.darkgrey),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: context.blue,
                  ).paddingOnly(left: 8.kw)
                ],
              ).paddingOnly(
                  right: 16.kw, top: 16.kh, bottom: 16.kh, left: 8.kw),
            ).paddingOnly(bottom: 16.kh),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.kw),
                color: context.pink.withOpacity(0.1)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: CommonImageView(
                    svgPath: ImageConstant.svgphotocam,
                    svgColor: context.blue,
                  ).paddingAll(8.kw),
                ).paddingOnly(right: 12.kw),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Take a photo of room',
                        style: TextStyleUtil.genSans600(fontSize: 16.kh),
                      ),
                      Text(
                        'Snap a few quick pictures to get personalized safety recommendations',
                        style: TextStyleUtil.genSans400(
                            fontSize: 14.kh, color: context.darkgrey),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: context.blue,
                ).paddingOnly(left: 8.kw)
              ],
            ).paddingOnly(right: 16.kw, top: 16.kh, bottom: 16.kh, left: 8.kw),
          )
        ],
      ).paddingOnly(left: 16.kw, right: 16.kw, top: 40.kw),
    );
  }
}
