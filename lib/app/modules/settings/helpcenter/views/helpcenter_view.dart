import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/builders/carouselControlRow.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:video_player/video_player.dart';

import '../../../../constants/seniorThriveAppBar.dart';
import '../../../../services/text_style_util.dart';
import '../controllers/helpcenter_controller.dart';

class HelpcenterView extends GetView<HelpcenterController> {
  const HelpcenterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: seniorThriveAppBar(
        title: Text(
          'Help Center',
          style: TextStyleUtil.genSans600(
            fontSize: 18.kh,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Find answers quickly",
                style: TextStyleUtil.genSans400(
                  fontSize: 16.kh,
                )),
            CupertinoSearchTextField(
              controller: controller.searchController,
              placeholder: 'How Can We Help You?',
              padding: EdgeInsets.all(14.kh),
              placeholderStyle: TextStyleUtil.genSans600(
                  fontSize: 16.kh, color: context.greyText),
              decoration: BoxDecoration(
                  border: Border.all(color: context.textFieldBordergrey),
                  borderRadius: BorderRadius.circular(16.kw)),
              suffixIcon: Icon(
                CupertinoIcons.search,
                color: context.darkgrey,
                size: 18.kh,
              ),
            ).paddingOnly(top: 8.kh, bottom: 31.kh),
            Row(
              children: [
                Icon(
                  CupertinoIcons.play_circle,
                  color: context.amazonBlue,
                ).paddingOnly(right: 8.kw),
                Text("Discover more through our video tutorials",
                    style: TextStyleUtil.genSans400(fontSize: 16.kh))
              ],
            ),
            carouselControlRow(title: 'Tutorial 1')
                .paddingOnly(top: 12.kh, bottom: 8.kh),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.kw),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.kw),
                    border: Border.all(color: context.orange)),
                child: Column(
                  children: [
                    Obx(
                      () => Stack(
                        alignment: Alignment.center,
                        children: [
                          controller.isVideoLoading.value
                              ? const CircularProgressIndicator()
                              : AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: VideoPlayer(
                                          controller.videoPlayerController)
                                      .paddingAll(8.kw),
                                ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    controller.isVideoPlaying.value
                                        ? CupertinoIcons.pause
                                        : CupertinoIcons.play,
                                    size: 24.kw,
                                    color: Colors.white,
                                  ).paddingAll(18.kw),
                                ),
                                onPressed: () {
                                  controller.playOrPauseVideo();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Lorem Ipsum",
                            style: TextStyleUtil.genSans700(fontSize: 14.kh)),
                        Text("2 mins 30 sec",
                            style: TextStyleUtil.genSans400(
                              fontSize: 10.kh,
                            ))
                      ],
                    ).paddingOnly(left: 8.kw, right: 8.kw),
                    Text("Critical issue detected! Take immediate action. View emergency recommendations and ensure your safety.",
                            style: TextStyleUtil.genSans400(
                                fontSize: 14.kh, color: context.greyText))
                        .paddingOnly(
                            left: 8.kw, right: 8.kw, top: 8.kh, bottom: 8.kh)
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  CupertinoIcons.compass,
                  color: context.amazonBlue,
                ).paddingOnly(right: 8.kw),
                Text("Explore more Topics",
                    style: TextStyleUtil.genSans400(fontSize: 16.kh))
              ],
            ).paddingOnly(top: 31.kh, bottom: 12.kh),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: context.textFieldBordergrey),
                        borderRadius: BorderRadius.circular(16.kw)),
                    child: Row(
                      children: [
                        Container(
                          height: 18.kh,
                          width: 18.kw,
                          decoration: BoxDecoration(
                              color: context.peach,
                              borderRadius: BorderRadius.circular(4.kw)),
                        ).paddingOnly(right: 8.kw),
                        Text("How to get started?",
                            style: TextStyleUtil.genSans400(fontSize: 16.kh))
                      ],
                    ).paddingAll(16.kw),
                  ).paddingOnly(bottom: 12.kh);
                })
          ],
        ).paddingOnly(left: 16.kw, right: 16.kw),
      ),
    );
  }
}
