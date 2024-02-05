import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:seniorthrive/app/components/container%20and%20cards/scoreCard.dart';
import 'package:seniorthrive/app/modules/homepage/controllers/homepage_controller.dart';
import 'package:seniorthrive/app/modules/homepage/views/homepage_view.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../components/builders/carouselControlRow.dart';
import '../../../../components/common_image_view.dart';
import '../../../../constants/image_constant.dart';
import '../../../../constants/seniorThriveAppBar.dart';
import '../../../../services/text_style_util.dart';
import '../controllers/recommendedmeasures_controller.dart';

class RecommendedmeasuresView extends GetView<RecommendedmeasuresController> {
  const RecommendedmeasuresView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomepageController());
    final HomepageController homepageController =
        Get.find<HomepageController>();
    return Scaffold(
        backgroundColor: context.greyBackGround,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Stack(children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(12.kw),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.pngbathRoomCard,
                          height: 272.kh,
                        ),
                      ),
                    ],
                  ),
                  seniorThriveAppBar(
                    backgroundColor: Colors.transparent,
                    isleading: false,
                    leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.5)),
                        child: Center(
                          child: Icon(
                            CupertinoIcons.chevron_back,
                            color: Colors.white,
                            size: 24.kh,
                          ),
                        )).paddingAll(10.kw),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(16.kw))),
                    child: Text(
                      'Bathroom',
                      style: TextStyleUtil.genSans400(
                          fontSize: 12.kh, color: Colors.white),
                    ).paddingOnly(
                        top: 4.kw, bottom: 4.kh, left: 11.kh, right: 10.kw),
                  ).paddingOnly(top: 16.kh)
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16.kw)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Bathroom Safety Enhancements",
                        style: TextStyleUtil.genSans600(
                          fontSize: 20.kh,
                        )).paddingOnly(top: 23.kh, bottom: 16.kh),
                    scoreCard1(),
                  ],
                ).paddingOnly(left: 16.kw, right: 16.kw, bottom: 15.kh),
              ).paddingOnly(top: 240.kh),
            ]),
            GroupButton(
              buttons: ['Critical', 'Moderate', 'Low'],
              isRadio: true,
              options: GroupButtonOptions(
                  borderRadius: BorderRadius.circular(32.kw),
                  textPadding: EdgeInsets.all(8.kw),
                  selectedTextStyle: TextStyleUtil.genSans600(
                      fontSize: 14.kh, color: Colors.white),
                  unselectedBorderColor: context.grey,
                  unselectedTextStyle: TextStyleUtil.genSans400(
                      fontSize: 14.kh, color: context.greyText),
                  selectedColor: context.darkRed),
            ).paddingOnly(top: 16.kh, bottom: 16.kh),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.kw),
                  border: Border.all(color: context.grey)),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.kw),
                        child: CommonImageView(
                          imagePath: ImageConstant.pngonBoarding1,
                          height: 95.kh,
                          width: 88.kw,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Clutter reduction",
                                    style: TextStyleUtil.genSans700(
                                      fontSize: 16.kh,
                                    )),
                                Text("Done",
                                    style: TextStyleUtil.genSans500(
                                        fontSize: 14.kh, color: context.green)),
                              ],
                            ),
                            Text(
                                "Consider placing non-slip mats on the bathroom floor to enhance safety.",
                                style:
                                    TextStyleUtil.genSans400(fontSize: 15.kh)),
                          ],
                        ),
                      )
                    ],
                  ),
                  carouselControlRow(
                    title: "DIY tutorials",
                  ),
                  diyTutorialsCarousel(controller: homepageController),
                  pointsEarnedContainer(
                    color: context.lightPeach,
                    textcolor: Colors.black,
                  ).paddingOnly(top: 14.kh),
                ],
              ).paddingAll(15.kw),
            ).paddingOnly(left: 16.kw, right: 16.kw)
          ],
        ))));
  }
}
