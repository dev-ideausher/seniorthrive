import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../services/text_style_util.dart';
import '../controllers/notificationsettings_controller.dart';

class NotificationsettingsView extends GetView<NotificationsettingsController> {
  const NotificationsettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotificationsettingsView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.kw)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'General Notifications',
                          style: TextStyleUtil.genSans800(fontSize: 18.kh),
                        ),
                        Text(
                          'Toggle general notifications to receive updates about app news, community activities, and more.',
                          style: TextStyleUtil.genSans400(fontSize: 16.kh),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => Column(
                      children: [
                        CupertinoSwitch(
                            activeColor: context.greenSwitch,
                            value: controller.notificationSwitchValue.value,
                            onChanged: (value) {
                              controller.notificationSwitchValue.value = value;
                            }),
                        controller.notificationSwitchValue.value == true
                            ? Text(
                                'On',
                                style:
                                    TextStyleUtil.genSans400(fontSize: 14.kh),
                              )
                            : Text(
                                'Off',
                                style:
                                    TextStyleUtil.genSans400(fontSize: 14.kh),
                              ),
                      ],
                    ),
                  ),
                ],
              ).paddingOnly(
                  left: 16.kw, right: 16.kw, top: 16.kh, bottom: 16.kh),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.kw)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HomeScan Alerts',
                          style: TextStyleUtil.genSans800(fontSize: 18.kh),
                        ),
                        Text(
                          'Toggle home scan alert notifications to receive instant alerts about your scan results and personalized recommendations.',
                          style: TextStyleUtil.genSans400(fontSize: 16.kh),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => Column(
                      children: [
                        CupertinoSwitch(
                            activeColor: context.greenSwitch,
                            value: controller.alertSwitchValue.value,
                            onChanged: (value) {
                              controller.alertSwitchValue.value = value;
                            }),
                        controller.alertSwitchValue.value == true
                            ? Text(
                                'On',
                                style:
                                    TextStyleUtil.genSans400(fontSize: 14.kh),
                              )
                            : Text(
                                'Off',
                                style:
                                    TextStyleUtil.genSans400(fontSize: 14.kh),
                              ),
                      ],
                    ),
                  ),
                ],
              ).paddingOnly(
                  left: 16.kw, right: 16.kw, top: 16.kh, bottom: 16.kh),
            ),
          ],
        ),
      ),
    );
  }
}
