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
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    Get.lazyPut(() => OnboardingController());
    return Scaffold(
        backgroundColor: context.brandColor1,
        appBar: seniorThriveAppBar(
          backgroundColor: Colors.transparent,
          isleading: false,
          actions: [
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.LOGINOPTIONS);
                },
                child: Text(
                  'SKIP',
                  style: TextStyleUtil.genSans400(
                      fontSize: 16.kh, color: Colors.white),
                ))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView(
                controller: pageController, // Add this line

                onPageChanged: (index) {
                  controller.currentPageIndex.value = index;
                  print(controller.currentPageIndex.value);
                },
                children: [
                  onBoarding(
                    controller: controller,
                    imagePath: ImageConstant.pngonBoarding1,
                    pageController: pageController,
                    label: 'Welcome to Senior Thrive!!',
                    text:
                        'Your personalized companion for a safer and more accessible home.Let\'s get started!',
                  ),
                  onBoarding(
                    controller: controller,
                    pageController: pageController,
                    imagePath: ImageConstant.pngonBoarding2,
                    label: 'Scan Your Home with Ease',
                    text:
                        'Capture photos effortlessly with our step-by-step guide. We\'re here to assist you at every click.',
                  ),
                  onBoarding(
                    controller: controller,
                    pageController: pageController,
                    label: 'Personalized Recommendations',
                    imagePath: ImageConstant.pngonBoarding3,
                    text:
                        'Get tailor-made suggestions based on your health and home. Your well-being is our top priority.',
                  ),
                  onBoarding(
                    controller: controller,
                    pageController: pageController,
                    imagePath: ImageConstant.pngonBoarding4,
                    label: 'Thrive Score and Progress',
                    text:
                        'Track your improvements with the Thrive Score. Each step you take enhances your safety and well-being.',
                  ),
                  onBoarding(
                    controller: controller,
                    label: 'Join Our Supportive Community',
                    imagePath: ImageConstant.pngonBoarding5,
                    pageController: pageController,
                    text:
                        'Connect with others, share stories, and discover helpful tips. Together, we thrive as a community.',
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.PREVIEWVIDEO);
                      },
                      child: Text('preview video'))
                ],
              ),
            ),
          ],
        ));
  }
}

class onBoarding extends StatelessWidget {
  final String label;
  final String text;
  final String? imagePath;
  final String? svgPath;
  final PageController pageController;
  const onBoarding({
    super.key,
    required this.controller,
    required this.label,
    required this.text,
    required this.pageController,
    this.imagePath,
    this.svgPath,
  });

  final OnboardingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonImageView(
          imagePath: imagePath,
          svgPath: svgPath,
          width: 333.kw,
          height: 355.kh,
          fit: BoxFit.contain,
        ),
        Center(
          child: SmoothPageIndicator(
            controller: pageController,
            count: 5,
            effect: WormEffect(
                activeDotColor: context.peach,
                dotWidth: 11.kw,
                dotHeight: 11.kh), // You can choose other effects
          ),
        ).paddingOnly(bottom: 18.kh, top: 18.kh),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(24.kw))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      style: TextStyleUtil.genSans700(
                          fontSize: 24.kh, color: Colors.black),
                    ).paddingOnly(
                        left: 35.kw, right: 35.kw, bottom: 16.kh, top: 24.kh),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyleUtil.genSans400(
                          fontSize: 16.kh, color: Colors.black),
                    ).paddingOnly(left: 35.kw, right: 35.kw, bottom: 26.kh),
                    Obx(
                      () => Row(
                        mainAxisAlignment: controller.currentPageIndex.value > 0
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.end,
                        children: [
                          if (controller.currentPageIndex.value > 0)
                            seniorThiveButton(
                                onPressed: () {
                                  pageController.previousPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                label: 'Previous',
                                backgroundColor: Colors.white,
                                side: BorderSide(color: context.orange),
                                style: TextStyleUtil.genSans600(
                                    fontSize: 16.kh, color: context.orange),
                                padding: EdgeInsets.all(16.kh),
                                borderRadius: BorderRadius.circular(16.kw)),
                          seniorThiveButton(
                              onPressed: () {
                                controller.currentPageIndex.value < 4
                                    ? pageController.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                      )
                                    : Get.toNamed(Routes.LOGINOPTIONS);
                              },
                              backgroundColor: context.orange,
                              padding: EdgeInsets.only(
                                  right: 36.kw,
                                  left: 36.kw,
                                  top: 16.kh,
                                  bottom: 16.kh),
                              label: controller.currentPageIndex.value == 4
                                  ? 'Get Started'
                                  : 'Next',
                              style: TextStyleUtil.genSans600(
                                  fontSize: 16.kh, color: Colors.white),
                              borderRadius: BorderRadius.circular(16.kw)),
                        ],
                      ).paddingOnly(right: 20.kh, left: 20.kw, bottom: 16.kh),
                    ),
                  ])),
        )
      ],
    );
  }
}
