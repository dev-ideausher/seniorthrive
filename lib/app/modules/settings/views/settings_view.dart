import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/modules/profile/personalinforamtion/controllers/personalinforamtion_controller.dart';
import 'package:seniorthrive/app/modules/profile/personalinforamtion/views/personalinforamtion_view.dart';
import 'package:seniorthrive/app/routes/app_pages.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

class SettingsView extends GetView<PersonalinforamtionController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PersonalinforamtionController());
    final PersonalinforamtionController personalinforamtionController =
        Get.find<PersonalinforamtionController>();
    return Scaffold(
        appBar: seniorThriveAppBar(
          isleading: false,
          leading: SizedBox(),
          title: Text(
            'Settings',
            style: TextStyleUtil.genSans600(fontSize: 18.kh),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Obx(
                () => Center(
                  child: profilePictureAvatar(
                    label:
                        personalinforamtionController.selectedImage.value == ''
                            ? 'Add'
                            : 'Edit',
                    onTap: personalinforamtionController.pickImage,
                    imagePath:
                        personalinforamtionController.selectedImage.value,
                  ),
                ),
              ),
              Text(
                personalinforamtionController.name.value,
                textAlign: TextAlign.center,
                style: TextStyleUtil.genSans500(fontSize: 20.kh),
              ),
              Text(
                "@${personalinforamtionController.name.value}",
                textAlign: TextAlign.center,
                style: TextStyleUtil.genSans400(
                    fontSize: 14.kh, color: context.greyText),
              ),
              Container(
                  decoration: BoxDecoration(color: context.lightgrey),
                  child: Text(
                    'PROFILE',
                    style: TextStyleUtil.genSans400(
                        fontSize: 14.kh, color: context.darkgrey),
                  ).paddingOnly(left: 16.kw, top: 16.kh, bottom: 16.kh)),
              profileSettingsList(
                svgPath: controller.profileSettingIcon,
                settingName: controller.profileSettingName,
                settingDescription: controller.profileSettingDescription,
                itemCount: controller.profileSettingIcon.length,
                onTap: (index) {
                  Get.toNamed(controller.profileSettingsPage[index]);
                },
              ),
              Container(
                  decoration: BoxDecoration(color: context.lightgrey),
                  child: Text(
                    'PROFILE',
                    style: TextStyleUtil.genSans400(
                        fontSize: 14.kh, color: context.darkgrey),
                  ).paddingOnly(left: 16.kw, top: 16.kh, bottom: 16.kh)),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.SUBSCRIPTIONSETTINGS);
                },
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CommonImageView(
                              svgPath: ImageConstant.svgdollar,
                              svgColor: context.blue,
                            ).paddingOnly(right: 16.kw),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Subscription',
                                  style:
                                      TextStyleUtil.genSans800(fontSize: 18.kh),
                                ),
                                Text(
                                  'Pick And Manage Your Plan',
                                  style: TextStyleUtil.genSans400(
                                      fontSize: 14.kh, color: context.greyText),
                                )
                              ],
                            ),
                          ],
                        ).paddingOnly(left: 16.kw),
                        Icon(
                          Icons.chevron_right,
                          size: 30.kh,
                          color: context.blue,
                        ).paddingOnly(right: 16.kw)
                      ],
                    ).paddingOnly(bottom: 8.kh, top: 8.kh),
                    Divider(
                      height: 2.kh,
                      thickness: 1.kh,
                      color: context.grey,
                    )
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(color: context.lightgrey),
                  child: Text(
                    'SETTINGS',
                    style: TextStyleUtil.genSans400(
                        fontSize: 14.kh, color: context.darkgrey),
                  ).paddingOnly(left: 16.kw, top: 16.kh, bottom: 16.kh)),
              profileSettingsList(
                  svgPath: controller.settingIcon,
                  settingName: controller.settingName,
                  itemCount: controller.settingName.length,
                  settingDescription: controller.settingDescription,
                  onTap: (index) {
                    Get.toNamed(controller.settingPage[index]);
                  }),
              Container(
                  decoration: BoxDecoration(color: context.lightgrey),
                  child: Text(
                    'Help',
                    style: TextStyleUtil.genSans400(
                        fontSize: 14.kh, color: context.darkgrey),
                  ).paddingOnly(left: 16.kw, top: 16.kh, bottom: 16.kh)),
              profileSettingsList(
                  svgPath: controller.helpIcon,
                  settingName: controller.helpName,
                  settingDescription: controller.helpDescription,
                  itemCount: controller.helpName.length,
                  onTap: (index) {
                    Get.toNamed(controller.helpPage[index]);
                  }),
              Container(
                decoration: BoxDecoration(color: context.lightgrey),
                height: 32.kh,
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.logout_outlined, color: Colors.red)
                                .paddingOnly(right: 16.kw),
                            Text(
                              'Log Out',
                              style: TextStyleUtil.genSans500(
                                  fontSize: 18.kh, color: Colors.red),
                            ),
                          ],
                        ).paddingOnly(left: 16.kw),
                        Icon(Icons.chevron_right,
                                size: 30.kh, color: Colors.red)
                            .paddingOnly(right: 16.kw)
                      ],
                    ).paddingOnly(bottom: 8.kh, top: 8.kh),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class profileSettingsList extends StatelessWidget {
  final List<String> svgPath;
  final List<String> settingName;
  final List<String> settingDescription;
  final Function(int index) onTap;
  final int? itemCount;
  const profileSettingsList({
    super.key,
    required this.svgPath,
    required this.settingName,
    required this.settingDescription,
    required this.onTap,
    this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => onTap(index),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CommonImageView(
                          svgPath: svgPath[index],
                          svgColor: context.blue,
                          fit: BoxFit.fill,
                          height: 20.kh,
                          width: 20.kw,
                        ).paddingOnly(right: 16.kw),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              settingName[index],
                              style: TextStyleUtil.genSans800(fontSize: 18.kh),
                            ),
                            Text(
                              settingDescription[index],
                              style: TextStyleUtil.genSans400(
                                  fontSize: 14.kh, color: context.greyText),
                            )
                          ],
                        ),
                      ],
                    ).paddingOnly(left: 16.kw),
                    Icon(
                      Icons.chevron_right,
                      size: 30.kh,
                      color: context.blue,
                    ).paddingOnly(right: 16.kw)
                  ],
                ).paddingOnly(bottom: 8.kh, top: 8.kh),
                Divider(
                  height: 2.kh,
                  thickness: 1.kh,
                  color: context.grey,
                )
              ],
            ),
          );
        });
  }
}
