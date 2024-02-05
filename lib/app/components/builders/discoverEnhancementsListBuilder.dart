import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../modules/homepage/controllers/homepage_controller.dart';
import '../container and cards/CustomCard.dart';

class discoverEnhancementsListBuilder extends StatelessWidget {
  const discoverEnhancementsListBuilder({
    super.key,
    required this.controller,
  });

  final HomepageController controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 4,
      options: CarouselOptions(
        enableInfiniteScroll: false,
        viewportFraction: 1,
        aspectRatio: 1.34.kh,
        onPageChanged: (index, reason) {},
      ),
      carouselController: controller.carouselController,
      itemBuilder: (BuildContext context, int index, int pageViewIndex) {
        return Row(
          children: [
            Expanded(
              child: CustomCard().paddingOnly(right: 7.kw),
            ),
            Expanded(
              child: CustomCard(),
            ),
          ],
        );
      },
    );
  }
}
