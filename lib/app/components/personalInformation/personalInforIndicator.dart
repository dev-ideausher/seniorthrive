import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../../modules/profile/personalinforamtion/controllers/personalinforamtion_controller.dart';

class personalInfoIndicator extends StatelessWidget {
  const personalInfoIndicator({
    super.key,
    required this.controller,
  });

  final PersonalinforamtionController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: controller.currentPageIndex.value >= 0
                                ? context.blue
                                : context.indicatorgrey)),
                    child: Container(
                      height: 10.kh,
                      width: 10.kw,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: controller.currentPageIndex.value >= 0
                              ? context.blue
                              : context.indicatorgrey),
                    ).paddingAll(
                        controller.currentPageIndex.value >= 0 ? 3.kw : 0),
                  ),
                  Container(
                    width: 171.kw,
                    height: 3.kh,
                    decoration: BoxDecoration(
                        color: controller.currentPageIndex.value >= 1
                            ? context.blue
                            : context.indicatorgrey),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: controller.currentPageIndex.value >= 1
                                ? context.blue
                                : context.indicatorgrey)),
                    child: Container(
                      height: 10.kh,
                      width: 10.kw,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: controller.currentPageIndex.value >= 1
                              ? context.blue
                              : context.indicatorgrey),
                    ).paddingAll(
                        controller.currentPageIndex.value >= 1 ? 3.kw : 0),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create Profile',
                style: TextStyleUtil.genSans500(
                    fontSize: 12.kh,
                    color: controller.currentPageIndex.value >= 0
                        ? context.blue
                        : context.indicatorgrey),
              ).paddingOnly(right: 79.kw),
              Text(
                'Health Overview',
                style: TextStyleUtil.genSans500(
                    fontSize: 12.kh,
                    color: controller.currentPageIndex.value >= 1
                        ? context.blue
                        : context.indicatorgrey),
              )
            ],
          ).paddingOnly(top: 5.kh)
        ],
      ),
    );
  }
}
