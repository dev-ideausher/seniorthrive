import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../constants/customButton.dart';
import '../../../../services/text_style_util.dart';
import '../controllers/accessiblity_controller.dart';

class AccessiblityView extends GetView<AccessiblityController> {
  const AccessiblityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AccessiblityView'),
          centerTitle: true,
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: context.orange,
                  unselectedLabelColor: context.greyText,
                  labelStyle: TextStyleUtil.genSans600(fontSize: 14.kh),
                  labelPadding: EdgeInsets.only(bottom: 12.kh),
                  tabs: [
                    Text("Voice Control",
                        style: TextStyleUtil.genSansTab500(fontSize: 14.kh)),
                    Text("Font Size",
                        style: TextStyleUtil.genSansTab500(fontSize: 14.kh))
                  ]).paddingOnly(right: 123.kw),
              Expanded(
                child: TabBarView(children: [
                  textToSpeech().paddingOnly(top: 8.kh),
                  fontSize().paddingOnly(top: 8.kh)
                ]),
              )
            ],
          ),
        ));
  }
}

class textToSpeech extends GetView<AccessiblityController> {
  const textToSpeech({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Welcome to Volume Settings! Tailor the sound and voice features to match your preferences and needs. Whether it\'s adjusting the text-to-speech volume or toggling the voice feature on/off, make sure Senior Thrive speaks to you in the way that best suits your comfort.',
            style: TextStyleUtil.genSans400(fontSize: 14.kh),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8.kw)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Text to Speech',
                  style: TextStyleUtil.genSans400(fontSize: 18.kh),
                ),
                Obx(
                  () => CupertinoSwitch(
                      activeColor: context.greenSwitch,
                      value: controller.switchValue.value,
                      onChanged: (value) {
                        controller.switchValue.value = value;
                      }),
                )
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw, top: 16.kh, bottom: 16.kh),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8.kw)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Main text will look like this. \nLorem Ipsum text for speech testing',
                  style: TextStyleUtil.genSans400(fontSize: 18.kh),
                ),
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw, top: 36.kh, bottom: 36.kh),
          ).paddingOnly(top: 16.kw, bottom: 16.kh),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.kw),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Volume',
                  style: TextStyleUtil.genSans400(fontSize: 18.kh),
                ).paddingOnly(
                  left: 16.kw,
                  right: 16.kw,
                  top: 16.kh,
                  bottom: 16.kh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.minus,
                      color: Colors.black,
                    ),
                    Obx(
                      () => Slider(
                        value: controller.volume.value,
                        activeColor: context.blue,
                        onChanged: (value) {
                          controller.onVolumeChanged(value);
                          controller.volume.value = value;
                        },
                      ),
                    ),
                    Icon(
                      CupertinoIcons.plus,
                      color: Colors.black,
                    ),
                  ],
                ).paddingOnly(left: 16.kw, right: 16.kw),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
// Read the main text using text-to-speech
              controller.speakText(
                'Main text will look like this. \nLorem Ipsum text for speech testing',
              );
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.blue,
              ),
              child: Icon(
                CupertinoIcons.play,
                color: Colors.white,
              ).paddingAll(16.kh),
            ),
          ).paddingOnly(top: 16.kh),
          seniorThiveButton(
            onPressed: () {},
            borderRadius: BorderRadius.circular(16.kw),
            label: 'Save',
          )
        ],
      ).paddingOnly(left: 16.kw, right: 16.kw),
    ));
  }
}

class fontSize extends GetView<AccessiblityController> {
  const fontSize({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Welcome to Font Size Settings! Adjusting the font size ensures a comfortable reading experience tailored just for you. Customize to your liking and make your Senior Thrive app truly yours!',
            style: TextStyleUtil.genSans400(fontSize: 14.kh),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8.kw)),
            child: Text(
              'Main text will look like this. \n1234567890!@#\$%^&*()_+=',
              textAlign: TextAlign.center,
              style: TextStyleUtil.genSans400(fontSize: 18.kh),
            ).paddingOnly(left: 16.kw, right: 16.kw, top: 36.kh, bottom: 36.kh),
          ).paddingOnly(top: 16.kw, bottom: 16.kh),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8.kw)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bold Font',
                  style: TextStyleUtil.genSans400(fontSize: 18.kh),
                ),
                Obx(
                  () => CupertinoSwitch(
                      activeColor: context.greenSwitch,
                      value: controller.switchValue.value,
                      onChanged: (value) {
                        controller.switchValue.value = value;
                      }),
                ),
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw, top: 16.kh, bottom: 16.kh),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8.kw)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Contrast',
                  style: TextStyleUtil.genSans400(fontSize: 18.kh),
                ),
                Obx(
                  () => CupertinoSwitch(
                      activeColor: context.greenSwitch,
                      value: controller.switchValue.value,
                      onChanged: (value) {
                        controller.switchValue.value = value;
                      }),
                ),
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw, top: 16.kh, bottom: 16.kh),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.kw),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Font Size',
                  style: TextStyleUtil.genSans400(fontSize: 18.kh),
                ).paddingOnly(
                  left: 16.kw,
                  right: 16.kw,
                  top: 16.kh,
                  bottom: 16.kh,
                ),
                Obx(
                  () => SfSlider(
                    min: 0.0,
                    max: 10.0,
                    value: controller.fontSize.value,
                    activeColor: Colors.red,
                    thumbShape: SfThumbShape(),
                    dividerShape: SfDividerShape(),
                    showDividers: true,
                    inactiveColor: Colors.black,
                    interval: 3,
                    showTicks: false,
                    showLabels: false,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    onChanged: (dynamic value) {
                      controller.fontSize.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          seniorThiveButton(
            onPressed: () {},
            borderRadius: BorderRadius.circular(16.kw),
            label: 'Save',
            padding: EdgeInsets.all(16.kh),
          )
        ],
      ).paddingOnly(left: 16.kw, right: 16.kw),
    ));
  }
}
