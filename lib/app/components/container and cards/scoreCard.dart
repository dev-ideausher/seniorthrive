import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../constants/image_constant.dart';
import '../../services/text_style_util.dart';
import '../common_image_view.dart';

class scoreCard extends StatelessWidget {
  const scoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16.kw)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CommonImageView(
                    imagePath: ImageConstant.pngScoreicon,
                  ),
                  Text("Your Senior Thrive Score",
                      style: TextStyleUtil.genSans800(
                        fontSize: 16.kh,
                      )),
                ],
              ),
              Icon(
                CupertinoIcons.question_circle,
                color: Colors.black,
              )
            ],
          ).paddingOnly(left: 16.kw, right: 16.kw, top: 16.kh),
          Text(
              "Your Thrive Score reflects the safety and accessibility of your home. Complete recommendations to watch it flourish!",
              style: TextStyleUtil.genSans400(
                fontSize: 15.kh,
              )).paddingOnly(left: 16.kw, right: 16.kw, top: 8.kh, bottom: 16.kh),
        ],
      ),
    );
  }
}

class scoreCard1 extends StatelessWidget {
  const scoreCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.blue, borderRadius: BorderRadius.circular(16.kw)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8.kw)),
                    child: CommonImageView(
                      imagePath: ImageConstant.pngthumb,
                    ).paddingAll(5.kw),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Great progress!",
                          style: TextStyleUtil.genSans700(
                              fontSize: 15.kh, color: Colors.white)),
                      Text("You've completed 2 out of 5 recommendations.",
                          style: TextStyleUtil.genSans300(
                              fontSize: 12.kh, color: Colors.white)),
                    ],
                  ).paddingOnly(left: 5.kw),
                ],
              ),
            ],
          ).paddingOnly(left: 16.kw, right: 16.kw, top: 16.kh),
          pointsEarnedContainer().paddingOnly(
              left: 16.kw, right: 16.kw, top: 12.kh, bottom: 12.kh),
        ],
      ),
    );
  }
}

class pointsEarnedContainer extends StatelessWidget {
  final Color? color;
  final Color? textcolor;
  const pointsEarnedContainer({
    super.key,
    this.color,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color ?? Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8.kw)),
      child: Row(
        children: [
          CommonImageView(
            imagePath: ImageConstant.pngScoreicon,
          ),
          Text("10 ThrivePoints Earned",
              style: TextStyleUtil.genSans400(
                  fontSize: 12.kh, color: textcolor ?? Colors.white))
        ],
      ).paddingAll(5.kw),
    );
  }
}
