import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.kw)),
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
                    Text(
                      'Main text will look like this. \nLorem Ipsum text for speech testing',
                      style: TextStyleUtil.genSans400(fontSize: 18.kh),
                    ),
                  ],
                ).paddingOnly(
                    left: 16.kw, right: 16.kw, top: 36.kh, bottom: 36.kh),
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
