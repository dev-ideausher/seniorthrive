import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/modules/bottomnavigatorbar/controllers/bottomnavigatorbar_controller.dart';
import 'package:seniorthrive/app/routes/app_pages.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../controllers/recommendations_controller.dart';

class RecommendationsView extends GetView<RecommendationsController> {
  const RecommendationsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: seniorThriveAppBar(
          title: Text(
            'Recommendations',
            style: TextStyleUtil.genSans600(fontSize: 18.kh),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {},
              child: CommonImageView(
                svgPath: ImageConstant.svgsearch,
              ),
            ).paddingOnly(right: 16.kw)
          ],
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
                    Text("Pending",
                        style: TextStyleUtil.genSansTab500(fontSize: 14.kh)),
                    Text("Resolved",
                        style: TextStyleUtil.genSansTab500(fontSize: 14.kh))
                  ]).paddingOnly(right: 123.kw),
              Expanded(
                child: TabBarView(children: [
                  pendingTabs(),
                  Container(
                    child: GroupButton<DateTime>(
                      isRadio: true,
                      buttons: [DateTime(2022, 4, 9), DateTime(2022, 4, 10)],
                      buttonBuilder: (selected, date, context) {
                        return Text('${date.year}-${date.month}-${date.day}');
                      },
                    ),
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}

class pendingTabs extends StatelessWidget {
  const pendingTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomnavigatorbarController bottomnavigatorbarController =
        Get.find<BottomnavigatorbarController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: bottomnavigatorbarController.thriveScore <= 0
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50.kh,
                      color: Colors.white,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          seniorThriveGroupButtons(
                            buttonName: [
                              'All',
                              'Living Room',
                              'BedRoom',
                              'Kitchen',
                              'BathRoom',
                            ],
                          )
                        ],
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.svgemptyGallery,
                    ).paddingOnly(top: 84.kh, bottom: 12.kh),
                    Text("Your Gallery is Empty",
                        style: TextStyleUtil.genSans600(fontSize: 18.kh)),
                    Text("It looks like you haven't completed any recommendations yet. Your journey to a safer home starts with a simple scan.",
                            textAlign: TextAlign.center,
                            style: TextStyleUtil.genSans400(fontSize: 15.kh))
                        .paddingOnly(top: 8.kh, bottom: 23.kh),
                    seniorThiveButton(
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(18.kh),
                      label: 'Start Home Scan',
                      style: TextStyleUtil.genSans600(
                          fontSize: 16.kh, color: Colors.white),
                      padding: EdgeInsets.all(16.kw),
                    ).paddingSymmetric(horizontal: 90.kw)
                  ],
                ).paddingOnly(left: 16.kw, right: 16.kw)
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50.kh,
                      color: Colors.white,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          seniorThriveGroupButtons(
                            buttonName: [
                              'All',
                              'Living Room',
                              'BedRoom',
                              'Kitchen',
                              'BathRoom',
                            ],
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional.topEnd,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.kw),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.pngbathRoomCard,
                                          width: 358.kw,
                                          height: 196.kh,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.horizontal(
                                                    left: Radius.circular(
                                                        16.kw))),
                                        child: Text(
                                          'Bathroom',
                                          style: TextStyleUtil.genSans400(
                                              fontSize: 12.kh,
                                              color: Colors.white),
                                        ).paddingOnly(
                                            top: 4.kw,
                                            bottom: 4.kh,
                                            left: 11.kh,
                                            right: 10.kw),
                                      ).paddingOnly(top: 16.kh)
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(15.kw)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CommonImageView(
                                          svgPath: ImageConstant.svgplay,
                                        ).paddingOnly(left: 14.kw),
                                        Text(
                                          'Play Video',
                                          style: TextStyleUtil.genSans400(
                                              fontSize: 12.kh,
                                              color: Colors.white),
                                        ).paddingOnly(
                                            top: 4.kw,
                                            bottom: 4.kh,
                                            left: 11.kh,
                                            right: 10.kw),
                                      ],
                                    ),
                                  ).paddingOnly(bottom: 10.kh)
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(Routes.RECOMMENDEDMEASURES);
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Bedroom Safety Enhancements",
                                            style: TextStyleUtil.genSans600(
                                              fontSize: 14.kh,
                                            )),
                                        Text("Today",
                                            style: TextStyleUtil.genSans400(
                                                fontSize: 14.kh,
                                                color: context.greyText)),
                                      ],
                                    ).paddingOnly(top: 16.kh),
                                    Text(
                                        "Lorem Ipsum text to enhance safety, consider placing non-slip mats on the bathroom floor to...",
                                        style: TextStyleUtil.genSans400(
                                          fontSize: 15.kh,
                                        )).paddingOnly(top: 11.kh, bottom: 16.kh),
                                    Text("Recommendations detected",
                                        style: TextStyleUtil.genSans400(
                                            fontSize: 14.kh,
                                            color: context.greyText)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                32.kw),
                                                        color: context.darkRed),
                                                    child: Text(
                                                      '3 Critical',
                                                      style: TextStyleUtil
                                                          .genSans500(
                                                              fontSize: 12.kh,
                                                              color:
                                                                  Colors.white),
                                                    ).paddingOnly(
                                                        left: 8.kw,
                                                        right: 8.kw,
                                                        top: 4.kh,
                                                        bottom: 4.kh))
                                                .paddingOnly(right: 4.kw),
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32.kw),
                                                    color: context.green),
                                                child: Text(
                                                  '2 Low',
                                                  style: TextStyleUtil.genSans500(
                                                      fontSize: 12.kh,
                                                      color: Colors.white),
                                                ).paddingOnly(
                                                    left: 8.kw,
                                                    right: 8.kw,
                                                    top: 4.kh,
                                                    bottom: 4.kh)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '3/7 Resolved',
                                              style: TextStyleUtil.genSans500(
                                                  fontSize: 12.kh,
                                                  color: context.amazonBlue),
                                            ).paddingOnly(right: 6.kw),
                                            SimpleCircularProgressBar(
                                              size: 34,
                                              progressStrokeWidth: 2,
                                              backStrokeWidth: 2,
                                              valueNotifier: ValueNotifier(30),
                                              backColor: context.greyText,
                                              progressColors: [
                                                context.blue,
                                                context.blue
                                              ],
                                              mergeMode: true,
                                              onGetText: (double value) {
                                                return Text('${value.toInt()}%');
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ).paddingOnly(top: 14.kh, bottom: 14.kh),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: context.lightPeach,
                                          borderRadius:
                                              BorderRadius.circular(8.kw)),
                                      child: Row(
                                        children: [
                                          CommonImageView(
                                            imagePath: ImageConstant.pngScoreicon,
                                          ).paddingOnly(right: 4.kw),
                                          Text("10 ThrivePoints Earned",
                                              style: TextStyleUtil.genSans400(
                                                  fontSize: 12.kh))
                                        ],
                                      ).paddingOnly(
                                          top: 4.kh, bottom: 4.kh, left: 4.kh),
                                    ),
                                    Divider(
                                      height: 2.kh,
                                      thickness: 2.kh,
                                      color: context.darkgrey,
                                    ).paddingOnly(top: 10.kh, bottom: 10.kh)
                                  ],
                                ),
                              )
                            ],
                          );
                        })
                  ],
                ).paddingOnly(left: 16.kw, right: 16.kw)),
    );
  }
}

class seniorThriveGroupButtons extends StatelessWidget {
  final List<String> buttonName;
  final Function(String)? onSelected;

  seniorThriveGroupButtons(
      {super.key, required this.buttonName, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return GroupButton(
      isRadio: true,
      enableDeselect: true,
      options: GroupButtonOptions(
        mainGroupAlignment: MainGroupAlignment.start,
        elevation: 0,
        borderRadius: BorderRadius.circular(32),
        unselectedBorderColor: context.grey,
        selectedBorderColor: context.orange,
        selectedColor: context.orange,
        unselectedTextStyle: TextStyleUtil.genSans400(fontSize: 14.kh),
      ),
      buttons: buttonName,
      onSelected: (value, index, isSelected) {
        // Call the callback function with the selected button's value
        onSelected!(value);
      },
    );
  }
}
