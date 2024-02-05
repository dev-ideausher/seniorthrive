import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/backGroundPainter.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../../../components/builders/carouselControlRow.dart';
import '../../../components/builders/discoverEnhancementsListBuilder.dart';
import '../../../components/container and cards/lighblueContainer.dart';
import '../../../components/container and cards/peachContainer.dart';
import '../../../components/container and cards/scoreCard.dart';
import '../../../components/nextandpreviousbuttoms.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomepageController());
    return Scaffold(
        backgroundColor: context.blue,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    CustomPaint(
                      painter: backgroundPainter(),
                      child: SizedBox(
                        height: 181.kh,
                        width: 253.kh,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi Georgia,',
                                    style: TextStyleUtil.genSans400(
                                        fontSize: 24.kh, color: Colors.white),
                                  ),
                                  Text(
                                    'Good Morning 🌞',
                                    style: TextStyleUtil.genSans600(
                                        fontSize: 24.kh, color: Colors.white),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.4),
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.svgnotification,
                                ).paddingAll(7.kw),
                              )
                            ],
                          ),
                          scoreCard()
                        ]).paddingOnly(left: 16.kw, right: 16.kw, top: 8.kh),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.kw)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34.kw),
                            border: Border.all(color: context.orange),
                            color: context.lightPeach),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonImageView(
                              svgPath: ImageConstant.svgscanmyhome,
                              fit: BoxFit.contain,
                            ).paddingOnly(top: 20.kh, bottom: 20.kh),
                            Text("Ready to enhance your living space?",
                                textAlign: TextAlign.center,
                                style: TextStyleUtil.genSans700(
                                  fontSize: 15.kh,
                                )),
                            Text(
                                "Let\'s start by scanning your home. It's easy, and we're here to assist you every step of the way",
                                textAlign: TextAlign.center,
                                style: TextStyleUtil.genSans400(
                                  fontSize: 15.kh,
                                )).paddingOnly(top: 8.kh, bottom: 12.kh),
                            seniorThiveButton(
                              onPressed: () {
                                controller.checkAndRequestCameraPermission();
                                //print('camera ${controller.allCameras}');
                              },
                              borderRadius: BorderRadius.circular(16.kh),
                              label: 'Scan My Home',
                              padding: EdgeInsets.all(16.kh),
                            ).paddingSymmetric(horizontal: 80.kw),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Know More',
                                  style: TextStyleUtil.genSans600(
                                      fontSize: 16.kh, color: Colors.blue),
                                ))
                          ],
                        ).paddingOnly(left: 16.kw, right: 16.kw),
                      ),
                      Text("Helpful Tips",
                          textAlign: TextAlign.center,
                          style: TextStyleUtil.genSans700(
                            fontSize: 15.kh,
                          )).paddingOnly(top: 28.kh, bottom: 10.kh),
                      lighblueContainer().paddingOnly(bottom: 45.kh),
                      Text("Join Our Thriving Community",
                          textAlign: TextAlign.center,
                          style: TextStyleUtil.genSans700(
                            fontSize: 15.kh,
                          )).paddingOnly(bottom: 21.kh),
                      peachContainer(
                        description:
                            'Connect with others who are on a similar journey. Share stories, tips, and discoveries.',
                        svgPath: ImageConstant.svgcommunity,
                      ).paddingOnly(bottom: 45.kh),
                    ],
                  ).paddingOnly(
                      left: 17.kw, right: 17.kw, top: 25.kh, bottom: 10.kh),
                ).paddingOnly(top: 16.kh),
              ],
            ),
          ),
        ));
  }
}

class HomePage2 extends StatelessWidget {
  const HomePage2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomepageController controller = HomepageController();
    return Scaffold(
        backgroundColor: context.blue,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    CustomPaint(
                      painter: backgroundPainter(),
                      child: SizedBox(
                        height: 181.kh,
                        width: 253.kh,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi Georgia,',
                                    style: TextStyleUtil.genSans400(
                                        fontSize: 24.kh, color: Colors.white),
                                  ),
                                  Text(
                                    'Good Morning 🌞',
                                    style: TextStyleUtil.genSans600(
                                        fontSize: 24.kh, color: Colors.white),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.4),
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.svgnotification,
                                ).paddingAll(7.kw),
                              )
                            ],
                          ),
                          scoreCard()
                        ]).paddingOnly(left: 16.kw, right: 16.kw, top: 8.kh),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.kw)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Fantastic job, Georgia! Your continued efforts have elevated your Thrive Score.",
                          textAlign: TextAlign.center,
                          style: TextStyleUtil.genSans400(
                            fontSize: 14.kh,
                          )).paddingOnly(left: 28.kw, right: 28.kw, top: 21.kh),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34.kw),
                            border: Border.all(color: context.orange),
                            color: context.lightPeach),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonImageView(
                              svgPath: ImageConstant.svgscanmyhome,
                              fit: BoxFit.contain,
                            ).paddingOnly(top: 20.kh, bottom: 20.kh),
                            Text("Ready to enhance your living space?",
                                textAlign: TextAlign.center,
                                style: TextStyleUtil.genSans700(
                                  fontSize: 15.kh,
                                )),
                            Text(
                                "Let\'s start by scanning your home. It's easy, and we're here to assist you every step of the way",
                                textAlign: TextAlign.center,
                                style: TextStyleUtil.genSans400(
                                  fontSize: 15.kh,
                                )).paddingOnly(top: 8.kh, bottom: 12.kh),
                            seniorThiveButton(
                              onPressed: () {
                                controller.checkAndRequestCameraPermission();
                                //print('camera ${controller.allCameras}');
                              },
                              borderRadius: BorderRadius.circular(16.kh),
                              label: 'Scan My Home',
                              padding: EdgeInsets.all(16.kh),
                            ).paddingSymmetric(horizontal: 80.kw),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Know More',
                                  style: TextStyleUtil.genSans600(
                                      fontSize: 16.kh, color: Colors.blue),
                                ))
                          ],
                        ).paddingOnly(left: 16.kw, right: 16.kw),
                      ).paddingOnly(
                          left: 17.kw, right: 17.kw, top: 25.kh, bottom: 39.kh),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Discover New Enhancements",
                              textAlign: TextAlign.center,
                              style: TextStyleUtil.genSans700(
                                fontSize: 15.kh,
                              )).paddingOnly(
                            left: 17.kw,
                            right: 17.kw,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text("See all",
                                  textAlign: TextAlign.center,
                                  style: TextStyleUtil.genSans600(
                                      fontSize: 14.kh, color: context.blue)))
                        ],
                      ).paddingOnly(top: 39.kh, bottom: 10.kh),
                      discoverEnhancementsListBuilder(controller: controller)
                          .paddingOnly(left: 17.kw, right: 17.kw),
                      nextandprevioudbutton(
                        size: 24.kw,
                        onTapNext: () {
                          controller.carouselController.nextPage();
                        },
                        onTapPrevious: () {
                          controller.carouselController.previousPage();
                        },
                      ).paddingOnly(top: 19.kh, bottom: 21.kh),
                      Container(
                        color: context.blue.withOpacity(0.2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Explore",
                                    textAlign: TextAlign.center,
                                    style: TextStyleUtil.genSans700(
                                      fontSize: 16.kh,
                                    ))
                                .paddingOnly(
                                    bottom: 21.kh,
                                    left: 17.kw,
                                    right: 17.kw,
                                    top: 21.kh),
                            carouselControlRow(
                              title: "DIY tutorials",
                            ).paddingOnly(
                                left: 17.kw, right: 17.kw, bottom: 10.kh),
                            diyTutorialsCarousel(controller: controller)
                                .paddingOnly(left: 17.kw, right: 17.kw),
                            carouselControlRow(
                              title: "Services",
                            ).paddingOnly(
                                left: 17.kw,
                                right: 17.kw,
                                bottom: 10.kh,
                                top: 30.kh),
                            CarouselSlider.builder(
                                    itemCount: 4,
                                    itemBuilder: (BuildContext context,
                                        int index, int pageIndex) {
                                      return Card(
                                        elevation: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8.kw)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(7.kw),
                                                child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .pngonBoarding2,
                                                  width: 156.kw,
                                                  height: 89.kh,
                                                ),
                                              ),
                                              Text("RS LockSmith ",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyleUtil.genSans500(
                                                    fontSize: 14.kh,
                                                  )),
                                              Row(
                                                children: [
                                                  Icon(
                                                    CupertinoIcons
                                                        .location_solid,
                                                    size: 12.kh,
                                                  ),
                                                  Text("Model Town, KPS",
                                                      style: TextStyleUtil
                                                          .genSans400(
                                                        fontSize: 12.kh,
                                                      )),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CommonImageView(
                                                    svgPath:
                                                        ImageConstant.svgstar,
                                                    height: 12.kh,
                                                    width: 12.kw,
                                                  ),
                                                  Text("5.0",
                                                      style: TextStyleUtil
                                                          .genSans400(
                                                        fontSize: 12.kh,
                                                      )),
                                                  Text("360 Reviews",
                                                      style: TextStyleUtil
                                                          .genSans400(
                                                        fontSize: 12.kh,
                                                      ))
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    options: CarouselOptions(
                                        enableInfiniteScroll: true,
                                        aspectRatio: 2,
                                        viewportFraction: 0.4))
                                .paddingOnly(left: 17.kw, right: 17.kw),
                            carouselControlRow(
                              title: "Products",
                            ).paddingOnly(
                                left: 17.kw,
                                right: 17.kw,
                                bottom: 10.kh,
                                top: 30.kh),
                            CarouselSlider.builder(
                                    itemCount: 4,
                                    itemBuilder: (BuildContext context,
                                        int index, int pageIndex) {
                                      return Card(
                                        elevation: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8.kw)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(7.kw),
                                                child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .pngonBoarding2,
                                                  width: 156.kw,
                                                  height: 89.kh,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    "VMS Careline shower seat",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyleUtil
                                                        .genSans500(
                                                      fontSize: 14.kh,
                                                    )),
                                              ),
                                              Row(
                                                children: [
                                                  Text("\$233",
                                                      style: TextStyleUtil
                                                          .genSans600(
                                                        fontSize: 12.kh,
                                                      )),
                                                  Text("Amazon",
                                                      style: TextStyleUtil
                                                          .genSans400(
                                                              fontSize: 12.kh,
                                                              color: context
                                                                  .amazonBlue)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    options: CarouselOptions(
                                        enableInfiniteScroll: true,
                                        aspectRatio: 2,
                                        viewportFraction: 0.4))
                                .paddingOnly(
                                    left: 17.kw, right: 17.kw, bottom: 36.kh),
                          ],
                        ),
                      ),
                      Text("Share Your Success",
                              style: TextStyleUtil.genSans700(fontSize: 16.kh))
                          .paddingOnly(top: 30.kh, bottom: 13.kh, left: 17.kw),
                      peachContainer(
                        description:
                            'Share your achievements and learn from others in our thriving community. Your experiences can inspire and guide fellow users.',
                        pngPath: ImageConstant.pngScore,
                        border: Border.all(color: context.orange),
                      ).paddingOnly(left: 17.kw, right: 17.kw),
                      Text("Helpful Tips",
                              style: TextStyleUtil.genSans700(fontSize: 16.kh))
                          .paddingOnly(top: 30.kh, bottom: 13.kh, left: 17.kw),
                      lighblueContainer()
                          .paddingOnly(bottom: 50.kh, left: 17.kw, right: 17.kw)
                    ],
                  ),
                ).paddingOnly(
                  top: 16.kh,
                ),
              ],
            ),
          ),
        ));
  }
}

class diyTutorialsCarousel extends StatelessWidget {
  const diyTutorialsCarousel({
    super.key,
    required this.controller,
  });

  final HomepageController controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            enableInfiniteScroll: false,
            padEnds: false,
            viewportFraction: 0.4,
            aspectRatio: 2.39),
        carouselController: controller.carouselController,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index, int pageIndex) {
          return Card(
            elevation: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.kw)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7.kw),
                    child: CommonImageView(
                      imagePath: ImageConstant.pngonBoarding2,
                      width: 116.kw,
                      height: 60.kh,
                    ),
                  ).paddingOnly(
                      left: 4.kw, right: 4.kw, top: 8.kw, bottom: 8.kh),
                  Text("Lorem Ipsum",
                      style: TextStyleUtil.genSans500(
                        fontSize: 14.kh,
                      )),
                  Text("2 mins 30 sec",
                      style: TextStyleUtil.genSans400(
                          fontSize: 10.kh, color: context.grey))
                ],
              ).paddingOnly(left: 4.kw, right: 4.kw, top: 8.kh, bottom: 8.kh),
            ),
          ).paddingOnly(right: 8.kw);
        });
  }
}
