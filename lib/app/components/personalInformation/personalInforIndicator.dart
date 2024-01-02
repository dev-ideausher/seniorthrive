import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

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
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: controller.currentPageIndex.value >= 0
                            ? Colors.green
                            : context.indicatorgrey)),
                child: Container(
                  height: 10.kh,
                  width: 10.kw,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.currentPageIndex.value >= 0
                          ? context.green
                          : context.indicatorgrey),
                ).paddingAll(controller.currentPageIndex.value >= 0 ? 3.kw : 0),
              ),
              Container(
                width: 50,
                height: 3,
                decoration: BoxDecoration(
                    color: controller.currentPageIndex.value == 1
                        ? context.green
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
                            ? Colors.green
                            : context.indicatorgrey)),
                child: Container(
                  height: 10.kh,
                  width: 10.kw,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.currentPageIndex.value >= 1
                          ? context.green
                          : context.indicatorgrey),
                ).paddingAll(controller.currentPageIndex.value >= 1 ? 3.kw : 0),
              ),
              Container(
                width: 50,
                height: 3,
                decoration: BoxDecoration(
                    color: controller.currentPageIndex.value >= 1
                        ? context.green
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
                        color: controller.currentPageIndex.value == 2
                            ? Colors.green
                            : context.indicatorgrey)),
                child: Container(
                  height: 10.kh,
                  width: 10.kw,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.currentPageIndex.value == 2
                          ? context.green
                          : context.indicatorgrey),
                ).paddingAll(controller.currentPageIndex.value == 2 ? 3.kw : 0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
