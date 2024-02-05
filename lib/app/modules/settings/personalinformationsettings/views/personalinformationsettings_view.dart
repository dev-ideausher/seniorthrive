import 'package:fk_toggle/fk_toggle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../components/common_image_view.dart';
import '../../../../components/seniorThriveTextField.dart';
import '../../../../constants/customButton.dart';
import '../../../../constants/image_constant.dart';
import '../../../../services/text_style_util.dart';
import '../../../profile/personalinforamtion/views/personalinforamtion_view.dart';
import '../controllers/personalinformationsettings_controller.dart';

class PersonalinformationsettingsView
    extends GetView<PersonalinformationsettingsController> {
  const PersonalinformationsettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PersonalinformationsettingsView'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Obx(
                  () => profilePictureAvatar(
                    label:
                        controller.selectedImage.value == '' ? 'Add' : 'Edit',
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
                controller: controller.nameController,
                onChanged: (value) => controller.name.value = value,
                hintStyle: TextStyleUtil.genSans400(fontSize: 16.kh),
              ).paddingOnly(top: 4.kh, bottom: 16.kh),
              Text(
                'Email',
                style: TextStyleUtil.genSans600(fontSize: 16.kh),
              ),
              seniorThriveTextField(
                hintText: 'xyz@gmail.com',
                controller: controller.emailController,
                onChanged: (value) => controller.name.value = value,
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
                      items: const [
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
                onPressed: () {},
                borderRadius: BorderRadius.circular(16.kw),
                padding: EdgeInsets.all(16.kw),
                label: 'Save',
              ).paddingOnly(top: 29.kh, bottom: 16.kh)
            ],
          ).paddingOnly(left: 16.kw, right: 16.kw),
        ));
  }
}
