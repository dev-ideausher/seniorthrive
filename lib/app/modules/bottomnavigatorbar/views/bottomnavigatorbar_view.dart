import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../controllers/bottomnavigatorbar_controller.dart';

class BottomnavigatorbarView extends GetView<BottomnavigatorbarController> {
  const BottomnavigatorbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ConvexAppBar.builder(
      count: 4,
      backgroundColor: Colors.white,
      height: 60.kh,
      itemBuilder: Builder(label: [
        'Home',
        'Recommendations',
        'Community',
        'Settings'
      ], svgPath: [
        ImageConstant.svgnavHome,
        ImageConstant.svgnavRecommendations,
        ImageConstant.svgusers,
        ImageConstant.svgnavsettings
      ]),
    ));
  }
}

// user defined class
class Builder extends DelegateBuilder {
  final List<String>? svgPath;
  final List<String>? imagePath;
  final List<String>? label;

  Builder({
    this.svgPath,
    this.imagePath,
    this.label,
  });
  @override
  Widget build(BuildContext context, int index, bool active) {
    return active == true
        ? Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: CommonImageView(
                  svgPath: svgPath?[index],
                  imagePath: imagePath?[index],
                  svgColor: Colors.white,
                ).paddingAll(13.kh),
              ).paddingOnly(bottom: 5.kh, top: 12.kw),
              Text(
                label![index],
                style: TextStyleUtil.genSans600(fontSize: 11.kh),
              )
            ],
          ).paddingOnly()
        : Column(
            children: [
              CommonImageView(
                svgPath: svgPath?[index],
                imagePath: imagePath?[index],
              ).paddingOnly(bottom: 5.kh, top: 12.kw),
              Text(
                label![index],
                style: TextStyleUtil.genSans600(fontSize: 11.kh),
              )
            ],
          );
  }
}
