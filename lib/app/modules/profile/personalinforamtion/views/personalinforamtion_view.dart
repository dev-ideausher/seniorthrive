import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fk_toggle/fk_toggle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/components/seniorThriveTextField.dart';
import 'package:seniorthrive/app/components/successAlertDialog.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../../../../components/personalInformation/personalInfoBottomSheet.dart';
import '../../../../components/personalInformation/personalInforIndicator.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/personalinforamtion_controller.dart';

class PersonalinforamtionView extends GetView<PersonalinforamtionController> {
  const PersonalinforamtionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PersonalinforamtionController());
    return Scaffold(
        appBar: seniorThriveAppBar(),
        body: Column(
          children: [
            personalInfoIndicator(controller: controller),
            Expanded(
                child: PageView(
              controller: controller.pageController,
              onPageChanged: (index) {
                controller.currentPageIndex.value = index;
              },
              children: [
                createProfilePage(
                  controller: controller,
                  onPressed: () {
                    controller.pageController.nextPage(
                        duration: Duration(microseconds: 500),
                        curve: Curves.bounceIn);
                  },
                ).paddingSymmetric(horizontal: 16.kw),
                healthOverView(
                  controller: controller,
                ).paddingSymmetric(horizontal: 16.kw),
              ],
            ))
          ],
        ));
  }
}

class healthOverView extends StatelessWidget {
  final PersonalinforamtionController controller;
  final dynamic Function()? onPressed;
  const healthOverView({
    super.key,
    required this.controller,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Personal Information',
                  style: TextStyleUtil.genSans700(
                      fontSize: 24.kh, color: Colors.black)),
              IconButton(
                  onPressed: () {
                    Get.bottomSheet(
                        Wrap(children: [personalInforBottomSheet()]),
                        enableDrag: true);
                  },
                  icon: Icon(
                    CupertinoIcons.info,
                    color: context.darkgrey,
                  ))
            ],
          ),
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
                          borderSide: BorderSide(color: context.orange),
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
                  onChanged: (value) {})
              .paddingOnly(top: 4.kh, bottom: 16.kh),
          Text(
            'Chronic Conditions',
            style: TextStyleUtil.genSans600(fontSize: 16.kh),
          ),
          chronicConditionDropDown(controller: controller),
          Text(
            'Do you use any mobility aids?',
            style: TextStyleUtil.genSans600(fontSize: 16.kh),
          ),
          DropdownButtonFormField(
                  hint: Text(
                    'Select if you use any',
                    style: TextStyleUtil.genSans400(
                        fontSize: 16.kh, color: context.indicatorgrey),
                  ),
                  borderRadius: BorderRadius.circular(16.kw),
                  decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.kw)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.kw)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.orange),
                          borderRadius: BorderRadius.circular(16.kw)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.grey),
                          borderRadius: BorderRadius.circular(16.kw))),
                  items: [
                    DropdownMenuItem(
                      child: Text('Male'),
                      value: 0,
                    ),
                    DropdownMenuItem(
                      child: Text('Female'),
                      value: 1,
                    ),
                  ],
                  onChanged: (value) {})
              .paddingOnly(top: 4.kh, bottom: 16.kh),
          Text(
            'Do you have any vision impairments we should be aware of?',
            style: TextStyleUtil.genSans600(fontSize: 16.kh),
          ),
          DropdownButtonFormField(
                  hint: Text(
                    'Select',
                    style: TextStyleUtil.genSans400(
                        fontSize: 16.kh, color: context.indicatorgrey),
                  ),
                  borderRadius: BorderRadius.circular(16.kw),
                  decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.kw)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.kw)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.orange),
                          borderRadius: BorderRadius.circular(16.kw)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.grey),
                          borderRadius: BorderRadius.circular(16.kw))),
                  items: [
                    DropdownMenuItem(
                      child: Text('Yes'),
                      value: 0,
                    ),
                    DropdownMenuItem(
                      child: Text('No'),
                      value: 1,
                    ),
                  ],
                  onChanged: (value) {})
              .paddingOnly(top: 4.kh, bottom: 16.kh),
          Text(
            'Do you use any hearing aids or have difficulty hearing?',
            style: TextStyleUtil.genSans600(fontSize: 16.kh),
          ),
          DropdownButtonFormField(
                  hint: Text(
                    'Select',
                    style: TextStyleUtil.genSans400(
                        fontSize: 16.kh, color: context.indicatorgrey),
                  ),
                  borderRadius: BorderRadius.circular(16.kw),
                  decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.kw)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.kw)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.orange),
                          borderRadius: BorderRadius.circular(16.kw)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.grey),
                          borderRadius: BorderRadius.circular(16.kw))),
                  items: [
                    DropdownMenuItem(
                      child: Text('Yes'),
                      value: 0,
                    ),
                    DropdownMenuItem(
                      child: Text('No'),
                      value: 1,
                    ),
                  ],
                  onChanged: (value) {})
              .paddingOnly(top: 4.kh, bottom: 16.kh),
          seniorThiveButton(
            onPressed: onPressed ??
                () {
                  Get.dialog(successAlert(
                    label: 'Successfully Created your Profile ',
                    description: 'Lorem ipsum dolor sit amet, consectetur.',
                    buttonLabel: 'Continue Exploring',
                    onPressed: () {
                      Get.offAndToNamed(Routes.BOTTOMNAVIGATORBAR);
                    },
                  ));
                },
            borderRadius: BorderRadius.circular(16.kw),
            padding: EdgeInsets.all(16.kw),
            label: 'Save',
          ).paddingOnly(top: 16.kh, bottom: 16.kh),
          seniorThiveButton(
            onPressed: onPressed ??
                () {
                  controller.pageController.previousPage(
                      duration: Duration(microseconds: 500),
                      curve: Curves.bounceIn);
                },
            borderRadius: BorderRadius.circular(16.kw),
            backgroundColor: Colors.white,
            side: BorderSide(color: context.orange),
            padding: EdgeInsets.all(16.kw),
            style: TextStyleUtil.genSans600(
                fontSize: 16.kh, color: context.orange),
            label: 'Prev',
          ).paddingOnly(bottom: 16.kh)
        ],
      ),
    );
  }
}

class chronicConditionDropDown extends StatelessWidget {
  const chronicConditionDropDown({
    super.key,
    required this.controller,
  });

  final PersonalinforamtionController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton2<String>(
        isExpanded: true,
        dropdownStyleData: DropdownStyleData(
            maxHeight: 220.kh,
            scrollbarTheme:
                ScrollbarThemeData(thickness: MaterialStateProperty.all(6.kw)),
            scrollPadding: EdgeInsets.only(right: 5.kw, top: 15.kh),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.kw),
                border: Border.all(color: context.orange))),
        hint: Text(
          "Enter chronic conditions",
          style: TextStyleUtil.genSans400(fontSize: 16.kh, color: context.grey),
        ),
        selectedItemBuilder: (context) {
          return controller.items.map(
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
        items: controller.items.map((String item) {
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
    );
  }
}

class createProfilePage extends StatelessWidget {
  final dynamic Function()? onPressed;
  const createProfilePage({
    super.key,
    required this.controller,
    this.onPressed,
  });

  final PersonalinforamtionController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Personal Information',
                  style: TextStyleUtil.genSans700(
                      fontSize: 24.kh, color: Colors.black)),
              IconButton(
                  onPressed: () {
                    Get.bottomSheet(
                        Wrap(children: [personalInforBottomSheet()]),
                        enableDrag: true);
                  },
                  icon: Icon(
                    CupertinoIcons.info,
                    color: context.darkgrey,
                  ))
            ],
          ),
          Center(
            child: Obx(
              () => profilePictureAvatar(
                label: controller.selectedImage.value == '' ? 'Add' : 'Edit',
                onTap: controller.pickImage,
                imagePath: controller.selectedImage.value,
              ),
            ),
          ),
          Text(
            'Full Name',
            style: TextStyleUtil.genSans600(fontSize: 16.kh),
          ),
          seniorThriveTextField(
            hintText: 'Full Name',
            hintStyle: TextStyleUtil.genSans400(fontSize: 16.kh),
          ).paddingOnly(top: 4.kh, bottom: 16.kh),
          Text(
            'Date Of Birth',
            style: TextStyleUtil.genSans600(fontSize: 16.kh),
          ),
          seniorThriveTextField(
            hintText: 'DD/MM/YY',
            hintStyle: TextStyleUtil.genSans400(fontSize: 16.kh),
            suffixIcon: CommonImageView(
              svgPath: ImageConstant.svgcalendar,
            ).paddingAll(16.kw),
          ).paddingOnly(top: 4.kh, bottom: 16.kh),
          Text(
            'Gender',
            style: TextStyleUtil.genSans600(fontSize: 16.kh),
          ),
          DropdownButtonFormField(
                  value: 0,
                  borderRadius: BorderRadius.circular(16.kw),
                  decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.kw)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16.kw)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.orange),
                          borderRadius: BorderRadius.circular(16.kw)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.grey),
                          borderRadius: BorderRadius.circular(16.kw))),
                  items: [
                    DropdownMenuItem(
                      child: Text('Male'),
                      value: 0,
                    ),
                    DropdownMenuItem(
                      child: Text('Female'),
                      value: 1,
                    ),
                  ],
                  onChanged: (value) {})
              .paddingOnly(top: 4.kh, bottom: 16.kh),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Height',
                style: TextStyleUtil.genSans600(fontSize: 16.kh),
              ),
              FkToggle(
                  selectedColor: context.blue,
                  backgroundColor: context.indicatorgrey,
                  disabledElementColor: Colors.black,
                  width: 50.kw,
                  height: 30.kh,
                  labels: const ['cm', 'fts']),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: seniorThriveTextField(
                hintText: 'Feet',
                hintStyle: TextStyleUtil.genSans400(fontSize: 16.kh),
              ).paddingOnly(top: 4.kh, bottom: 16.kh, right: 8.kw)),
              Expanded(
                  child: seniorThriveTextField(
                hintText: 'Inches',
                hintStyle: TextStyleUtil.genSans400(fontSize: 16.kh),
              ).paddingOnly(top: 4.kh, bottom: 16.kh)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Weight',
                style: TextStyleUtil.genSans600(fontSize: 16.kh),
              ),
              FkToggle(
                  selectedColor: context.blue,
                  backgroundColor: context.indicatorgrey,
                  disabledElementColor: Colors.black,
                  width: 50.kw,
                  height: 30.kh,
                  labels: const ['kg', 'Lbs']),
            ],
          ),
          seniorThriveTextField(
            hintText: 'kg',
            hintStyle: TextStyleUtil.genSans400(fontSize: 16.kh),
          ).paddingOnly(
            top: 4.kh,
          ),
          seniorThiveButton(
            onPressed: onPressed ?? () {},
            borderRadius: BorderRadius.circular(16.kw),
            padding: EdgeInsets.all(16.kw),
            label: 'Next',
          ).paddingOnly(top: 29.kh, bottom: 16.kh)
        ],
      ),
    );
  }
}

class profilePictureAvatar extends StatelessWidget {
  final String? label;
  final VoidCallback? onTap;
  final String? imagePath;
  const profilePictureAvatar({
    super.key,
    this.label,
    this.onTap,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.kw),
        child: SizedBox(
          height: 100.kh,
          width: 100.kw,
          child: Stack(
            alignment: Alignment.center,
            children: [
              imagePath == ''
                  ? Container(
                      height: 100.kh,
                      width: 100.kw,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.indicatorgrey,
                      ))
                  : Container(
                      height: 100.kh,
                      width: 100.kw,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.file(
                        File(imagePath!),
                        fit: BoxFit.cover,
                      ),
                    ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 24.kh,
                  width: 100.kw,
                  color: Colors.black.withOpacity(0.6),
                  child: Center(
                      child: Text(
                    label ?? "",
                    style: TextStyleUtil.genSans500(
                        fontSize: 13.kw, color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
