import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../constants/customButton.dart';
import '../constants/image_constant.dart';
import '../services/text_style_util.dart';
import 'common_image_view.dart';

class successAlert extends StatelessWidget {
  final String? label;
  final String? description;
  final String? buttonLabel;
  final dynamic Function() onPressed;
  const successAlert({
    this.label,
    this.description,
    this.buttonLabel,
    required dynamic Function() this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        scrollable: true,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImageView(
              imagePath: ImageConstant.pngshadowtick,
              fit: BoxFit.contain,
            ),
            Text(label ?? '',
                textAlign: TextAlign.center,
                style: TextStyleUtil.genSans600(
                  fontSize: 20.kh,
                )).paddingOnly(top: 16.kh, bottom: 8.kh),
            Text(description ?? '',
                textAlign: TextAlign.center,
                style: TextStyleUtil.genSans400(
                  fontSize: 14.kh,
                )),
            seniorThiveButton(
                    onPressed: onPressed,
                    label: buttonLabel,
                    style: TextStyleUtil.genSans600(
                        fontSize: 16.kh, color: Colors.white),
                    padding: EdgeInsets.all(16.kw),
                    borderRadius: BorderRadius.circular(8.kw))
                .paddingOnly(top: 44.kh)
          ],
        ));
  }
}
