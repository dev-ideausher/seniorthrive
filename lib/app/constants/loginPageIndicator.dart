import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../modules/login/loginwithemail/controllers/loginwithemail_controller.dart';
import '../services/text_style_util.dart';

class loginPageIndicator extends StatelessWidget {
  const loginPageIndicator({
    super.key,
    required this.controller,
  });

  final LoginwithemailController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.currentPageIndex.value = 0;
              controller.pageController
                  .jumpToPage(controller.currentPageIndex.value);
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: controller.currentPageIndex.value == 0
                              ? Colors.orange
                              : Colors.black)),
                  child: Container(
                    height: 10.kh,
                    width: 10.kw,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentPageIndex.value == 0
                            ? context.orange
                            : Colors.white),
                  ).paddingAll(3.kw),
                ).paddingOnly(right: 8.kw),
                Text(
                  'Email',
                  style: TextStyleUtil.genSans700(
                      fontSize: 16.kh,
                      color: controller.currentPageIndex.value == 0
                          ? Colors.orange
                          : Colors.black),
                )
              ],
            ).paddingOnly(right: 28.kw),
          ),
          GestureDetector(
            onTap: () {
              controller.currentPageIndex.value = 1;
              controller.pageController
                  .jumpToPage(controller.currentPageIndex.value);
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: controller.currentPageIndex.value == 1
                              ? Colors.orange
                              : Colors.black)),
                  child: Container(
                    height: 10.kh,
                    width: 10.kw,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentPageIndex.value == 1
                            ? context.orange
                            : Colors.white),
                  ).paddingAll(3.kw),
                ).paddingOnly(right: 8.kw),
                Text(
                  'Phone Number',
                  style: TextStyleUtil.genSans700(
                      fontSize: 16.kh,
                      color: controller.currentPageIndex.value == 1
                          ? Colors.orange
                          : Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
