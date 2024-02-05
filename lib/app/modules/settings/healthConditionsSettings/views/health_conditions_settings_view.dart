import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/modules/profile/personalinforamtion/controllers/personalinforamtion_controller.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../services/text_style_util.dart';
import '../controllers/health_conditions_settings_controller.dart';

class HealthConditionsSettingsView
    extends GetView<HealthConditionsSettingsController> {
  const HealthConditionsSettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final PersonalinforamtionController personalinforamtionController =
        Get.find<PersonalinforamtionController>();
    return Scaffold(
      appBar: seniorThriveAppBar(
        title: Text('Health Conditions'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Overall Health Status',
              style: TextStyleUtil.genSans600(fontSize: 16.kh),
            ),
            DropdownButtonFormField(
                borderRadius: BorderRadius.circular(16.kw),
                icon: Icon(CupertinoIcons.chevron_down),
                hint: Text(
                  'Select your overall health status',
                  style: TextStyleUtil.genSans400(
                      fontSize: 16.kh, color: context.indicatorgrey),
                ),
                decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(16.kw)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(16.kw)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: context.grey),
                        borderRadius: BorderRadius.circular(16.kw)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: context.grey),
                        borderRadius: BorderRadius.circular(16.kw))),
                items: [
                  DropdownMenuItem(
                    child: Text('Healthy'),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text('Unhealty'),
                    value: 1,
                  ),
                ],
                onChanged: (value) {}),
            Text(
              'Chronic Conditions',
              style: TextStyleUtil.genSans600(fontSize: 16.kh),
            ),
            Obx(
              () => DropdownButtonFormField(
                borderRadius: BorderRadius.circular(16.kw),
                icon: Icon(CupertinoIcons.chevron_down),
                hint: Text(
                  'Medications',
                  style: TextStyleUtil.genSans400(
                      fontSize: 16.kh, color: context.indicatorgrey),
                ),
                decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(16.kw)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(16.kw)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: context.grey),
                        borderRadius: BorderRadius.circular(16.kw)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: context.grey),
                        borderRadius: BorderRadius.circular(16.kw))),
                selectedItemBuilder: (context) {
                  return controller.chronicDiesease.map(
                    (item) {
                      return Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          controller.selectedItems.join(', '),
                          style: const TextStyle(
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      );
                    },
                  ).toList();
                },
                value: controller.selectedItems.isEmpty
                    ? null
                    : controller.selectedItems.last,
                items: controller.chronicDiesease.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedItems.contains(item)
                              ? controller.selectedItems.remove(item)
                              : controller.selectedItems.add(item);
                        },
                        child: Row(
                          children: [
                            Checkbox(
                              value: controller.selectedItems.contains(item),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  color: controller.selectedItems.contains(item)
                                      ? context.darkRed
                                      : Colors.black),
                              onChanged: (bool? value) {
                                if (value != null) {
                                  value
                                      ? controller.selectedItems.add(item)
                                      : controller.selectedItems.remove(item);
                                }
                              },
                            ),
                            Text(
                              item,
                              style: TextStyleUtil.genSans400(
                                  fontSize: 16.kh,
                                  color: controller.selectedItems.contains(item)
                                      ? context.blue
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ),
            Text(
              'Medications',
              style: TextStyleUtil.genSans600(fontSize: 16.kh),
            ),
            Obx(
              () => DropdownButtonFormField(
                borderRadius: BorderRadius.circular(16.kw),
                icon: Icon(CupertinoIcons.chevron_down),
                hint: Text(
                  'Enter chronic conditions',
                  style: TextStyleUtil.genSans400(
                      fontSize: 16.kh, color: context.indicatorgrey),
                ),
                decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(16.kw)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(16.kw)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: context.grey),
                        borderRadius: BorderRadius.circular(16.kw)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: context.grey),
                        borderRadius: BorderRadius.circular(16.kw))),
                selectedItemBuilder: (context) {
                  return controller.chronicDiesease.map(
                    (item) {
                      return Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          controller.selectedItems.join(', '),
                          style: const TextStyle(
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      );
                    },
                  ).toList();
                },
                value: controller.selectedItems.isEmpty
                    ? null
                    : controller.selectedItems.last,
                items: controller.chronicDiesease.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedItems.contains(item)
                              ? controller.selectedItems.remove(item)
                              : controller.selectedItems.add(item);
                        },
                        child: Row(
                          children: [
                            Checkbox(
                              value: controller.selectedItems.contains(item),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  color: controller.selectedItems.contains(item)
                                      ? context.darkRed
                                      : Colors.black),
                              onChanged: (bool? value) {
                                if (value != null) {
                                  value
                                      ? controller.selectedItems.add(item)
                                      : controller.selectedItems.remove(item);
                                }
                              },
                            ),
                            Text(
                              item,
                              style: TextStyleUtil.genSans400(
                                  fontSize: 16.kh,
                                  color: controller.selectedItems.contains(item)
                                      ? context.blue
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ),
            Text(
              'Allergies',
              style: TextStyleUtil.genSans600(fontSize: 16.kh),
            ),
            Obx(
              () => DropdownButtonFormField(
                borderRadius: BorderRadius.circular(16.kw),
                icon: Icon(CupertinoIcons.chevron_down),
                hint: Text(
                  'Allergies',
                  style: TextStyleUtil.genSans400(
                      fontSize: 16.kh, color: context.indicatorgrey),
                ),
                decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(16.kw)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(16.kw)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: context.grey),
                        borderRadius: BorderRadius.circular(16.kw)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: context.grey),
                        borderRadius: BorderRadius.circular(16.kw))),
                selectedItemBuilder: (context) {
                  return controller.chronicDiesease.map(
                    (item) {
                      return Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          controller.selectedItems.join(', '),
                          style: const TextStyle(
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      );
                    },
                  ).toList();
                },
                value: controller.selectedItems.isEmpty
                    ? null
                    : controller.selectedItems.last,
                items: controller.chronicDiesease.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedItems.contains(item)
                              ? controller.selectedItems.remove(item)
                              : controller.selectedItems.add(item);
                        },
                        child: Row(
                          children: [
                            Checkbox(
                              value: controller.selectedItems.contains(item),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  color: controller.selectedItems.contains(item)
                                      ? context.darkRed
                                      : Colors.black),
                              onChanged: (bool? value) {
                                if (value != null) {
                                  value
                                      ? controller.selectedItems.add(item)
                                      : controller.selectedItems.remove(item);
                                }
                              },
                            ),
                            Text(
                              item,
                              style: TextStyleUtil.genSans400(
                                  fontSize: 16.kh,
                                  color: controller.selectedItems.contains(item)
                                      ? context.blue
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ),
            seniorThiveButton(
              onPressed: () {},
              borderRadius: BorderRadius.circular(8.kw),
              style: TextStyleUtil.genSans600(
                  fontSize: 14.kh, color: Colors.white),
              label: 'Save',
              padding: EdgeInsets.all(16.kh),
            ).paddingOnly(top: 200.kh)
          ],
        ).paddingOnly(left: 16.kw, right: 16.kw),
      ),
    );
  }
}
