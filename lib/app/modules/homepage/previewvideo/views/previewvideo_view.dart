import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/routes/app_pages.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';
import 'package:video_player/video_player.dart';

import '../controllers/previewvideo_controller.dart';

class PreviewvideoView extends GetView<PreviewvideoController> {
  const PreviewvideoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: seniorThriveAppBar(
        title: Text(
          'Preview Video',
          style: TextStyleUtil.genSans500(fontSize: 20.kh),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.kw),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Show loading indicator while video is initializing
                    controller.isVideoLoading.value
                        ? CircularProgressIndicator()
                        : Container(),
                    Container(
                      height: 244.kh,
                      width: 358.kw,
                      child: VideoPlayer(controller.videoPlayerController),
                    ),
                    // Play/Pause Button
                    Obx(() {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Icon(
                                controller.isVideoPlaying.value
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                size: 40.kw,
                                color: Colors.black,
                              ).paddingAll(8.kw),
                            ),
                            onPressed: () {
                              controller.playOrPauseVideo();
                            },
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.kh),
                                color: Colors.white.withOpacity(0.49)),
                            child: Text(
                              'Preview',
                              style: TextStyleUtil.genSans500(
                                  fontSize: 12.kh, color: context.darkblue),
                            ).paddingOnly(
                                left: 16.kw,
                                right: 16.kw,
                                bottom: 4.kh,
                                top: 4.kh),
                          )
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ),
            Text("Lorem ipsum dolor sit amet consectetur.",
                style: TextStyleUtil.genSans600(
                  fontSize: 20.kh,
                )).paddingOnly(bottom: 10.kh, top: 32.kh),
            Text(
                "Lorem ipsum dolor sit amet consectetur. Arcu eu augue a sagittis placerat quam. Porttitor scelerisque purus cras scelerisque odio auctor pellentesque aenean. Suscipit volutpat pretium non duis.",
                style: TextStyleUtil.genSans400(
                    fontSize: 14.kh, color: context.greyText)),
            seniorThiveButton(
              onPressed: () {},
              borderRadius: BorderRadius.circular(16.kw),
              side: BorderSide(color: context.orange),
              backgroundColor: Colors.white,
              style: TextStyleUtil.genSans600(
                  fontSize: 16.kh, color: context.orange),
              padding: EdgeInsets.all(16.kh),
              label: 'Rescan',
            ).paddingOnly(top: 193.kh, bottom: 12.kh),
            seniorThiveButton(
              onPressed: () {
                Get.bottomSheet(
                    isScrollControlled: true,
                    SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24.kw)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CommonImageView(
                                      svgPath: ImageConstant.svgEllipse,
                                    ),
                                    Text(
                                      'Illustration',
                                      style: TextStyleUtil.genSans400(
                                          fontSize: 12.kh,
                                          color: context.orange),
                                    )
                                  ],
                                ),
                              ],
                            ).paddingOnly(top: 36.kh),
                            Text("Your Video is being uploaded and analyzed",
                                textAlign: TextAlign.center,
                                style: TextStyleUtil.genSans600(
                                  fontSize: 20.kh,
                                )),
                            Text(
                                "Lorem ipsum dolor sit amet consectetur. Arcu eu augue a sagittis placerat quam. Porttitor scelerisque purus cras scelerisque odio auctor",
                                textAlign: TextAlign.center,
                                style: TextStyleUtil.genSans400(
                                  fontSize: 12.kh,
                                )),
                            seniorThiveButton(
                              onPressed: () {
                                Get.toNamed(Routes.SCANRESULTS);
                              },
                              borderRadius: BorderRadius.circular(56.kw),
                              backgroundColor: context.bottomsheetbutton,
                              label: 'Check Status',
                              style: TextStyleUtil.genSans600(
                                  fontSize: 16.kh, color: context.darkblue),
                            ).paddingOnly(top: 48.kh)
                          ],
                        ).paddingOnly(left: 16.kw, right: 16.kw, bottom: 16.kh),
                      ).paddingOnly(
                        left: 16,
                        right: 16,
                        bottom: 16,
                      ),
                    ));
              },
              borderRadius: BorderRadius.circular(16.kw),
              label: 'Continue',
              padding: EdgeInsets.all(16.kh),
            )
          ],
        ).paddingOnly(left: 16.kw, right: 16.kw, top: 20.kh),
      ),
    );
  }
}
