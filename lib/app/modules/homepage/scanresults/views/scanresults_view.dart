import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../services/text_style_util.dart';
import '../controllers/scanresults_controller.dart';

class ScanresultsView extends GetView<ScanresultsController> {
  const ScanresultsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: seniorThriveAppBar(
          title: Text(
            'Scan Result',
            style: TextStyleUtil.genSans500(fontSize: 20.kh),
          ),
          centerTitle: true,
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                indicatorColor: context.orange,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: context.grey,
                labelStyle: TextStyleUtil.genSans500(
                  fontSize: 14.kh,
                ),
                tabs: [
                  Text("In Progress",
                          style: TextStyleUtil.genSansTab500(fontSize: 14.kh))
                      .paddingOnly(bottom: 10.kh),
                  Text("Completed",
                          style: TextStyleUtil.genSansTab500(fontSize: 14.kh))
                      .paddingOnly(bottom: 10.kh),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  inProgressTab(),
                  scanCompletedTab(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class scanCompletedTab extends GetView<ScanresultsController> {
  const scanCompletedTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.grey.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(18.kw), bottom: Radius.circular(18.kw))),
          child: Column(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(18.kw)),
                child: CommonImageView(
                  imagePath: ImageConstant.pngbathRoomTab,
                  fit: BoxFit.fill,
                  width: 358.kw,
                  height: 202.kh,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(64.kw),
                        color: context.lightPeach),
                    child: Text(
                      'Bathroom',
                      style: TextStyleUtil.genSans500(fontSize: 12.kh),
                    ).paddingSymmetric(horizontal: 16.kw, vertical: 8.kh),
                  ),
                  Row(
                    children: [
                      CommonImageView(
                        svgPath: ImageConstant.svgcalendar,
                        svgColor: Colors.black,
                      ).paddingOnly(right: 4.kw),
                      Text("Today, 12:35 PM",
                          style: TextStyleUtil.genSans500(
                            fontSize: 14.kh,
                          ))
                    ],
                  ),
                ],
              ).paddingOnly(
                  top: 16.kh, bottom: 16.kh, left: 16.kw, right: 16.kw),
              Divider(
                color: context.grey.withOpacity(0.5),
                height: 2.kh,
              ).paddingOnly(bottom: 16.kh, left: 16.kw, right: 16.kw),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: context.darkRed),
                        child: Text("5",
                                style: TextStyleUtil.genSans500(
                                    fontSize: 14.kh, color: Colors.white))
                            .paddingAll(12.kw),
                      ),
                      Text("Critical Safety Flaws detected",
                              style: TextStyleUtil.genSans500(fontSize: 14.kh))
                          .paddingOnly(left: 8.kw)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: context.orange),
                        child: Text("2",
                                style: TextStyleUtil.genSans500(
                                    fontSize: 14.kh, color: Colors.white))
                            .paddingAll(12.kw),
                      ),
                      Text("Moderate Safety Flaws detected",
                              style: TextStyleUtil.genSans500(fontSize: 14.kh))
                          .paddingOnly(left: 8.kw)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: context.olivegreen),
                        child: Text("5",
                                style: TextStyleUtil.genSans500(
                                    fontSize: 14.kh, color: Colors.white))
                            .paddingAll(12.kw),
                      ),
                      Text("Low Safety Flaws detected",
                              style: TextStyleUtil.genSans500(fontSize: 14.kh))
                          .paddingOnly(left: 8.kw)
                    ],
                  ),
                ],
              ).paddingOnly(left: 16.kw),
              seniorThiveButton(
                onPressed: () {},
                borderRadius: BorderRadius.circular(16.kw),
                label: 'View Details',
                padding: EdgeInsets.all(16.kw),
              ).paddingOnly(
                  left: 16.kw, right: 16.kw, bottom: 22.kh, top: 25.kh)
            ],
          ),
        ).paddingOnly(top: 24.kh).paddingOnly(left: 16.kw, right: 16.kw),
      ),
    );
  }
}

class inProgressTab extends GetView<ScanresultsController> {
  const inProgressTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.grey.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(18.kw), bottom: Radius.circular(18.kw))),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(18.kw)),
                    child: CommonImageView(
                      imagePath: ImageConstant.pngbathRoomTab,
                      fit: BoxFit.fill,
                      width: 358.kw,
                      height: 202.kh,
                    ),
                  ),
                  Container(
                    height: 60.kh,
                    width: 159.kw,
                    decoration: BoxDecoration(
                        color: context.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.kw),
                            bottomLeft: Radius.circular(8.kw))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Est. Processing Time",
                                style: TextStyleUtil.genSans500(
                                    fontSize: 12.kh, color: Colors.white))
                            .paddingOnly(top: 8.kh, bottom: 4.kh),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.clock,
                              color: Colors.white,
                              size: 20.kw,
                            ).paddingOnly(right: 4.kw),
                            Text("8 min",
                                style: TextStyleUtil.genSans500(
                                    fontSize: 16.kh, color: Colors.white))
                          ],
                        ).paddingOnly(bottom: 4.kh)
                      ],
                    ).paddingOnly(left: 10.kw),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(64.kw),
                        color: context.lightPeach),
                    child: Text(
                      'Bathroom',
                      style: TextStyleUtil.genSans500(fontSize: 12.kh),
                    ).paddingSymmetric(horizontal: 16.kw, vertical: 8.kh),
                  ),
                  Row(
                    children: [
                      CommonImageView(
                        svgPath: ImageConstant.svgcalendar,
                      ).paddingOnly(right: 4.kw),
                      Text("Today, 12:35 PM",
                          style: TextStyleUtil.genSans500(
                              fontSize: 14.kh, color: context.darkblue))
                    ],
                  ),
                ],
              ).paddingOnly(
                  top: 16.kh, bottom: 16.kh, left: 16.kw, right: 16.kw),
              Divider(
                color: context.grey.withOpacity(0.5),
                height: 2.kh,
              ).paddingOnly(bottom: 16.kh, left: 16.kw, right: 16.kw),
              Obx(
                () => Stepper(
                  physics: NeverScrollableScrollPhysics(),
                  controlsBuilder: (BuildContext context, controldetails) {
                    return Container();
                  },
                  connectorThickness: 2.kw,
                  stepIconBuilder: (index, context) {
                    if (index <= controller.currentStep.value) {
                      return Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF1741AC)),
                          child: Icon(
                            Icons.check_outlined,
                            color: Colors.white,
                            size: 18.kh,
                          ));
                    } else {
                      return Icon(Icons.circle, color: Colors.white);
                    }
                  },
                  connectorColor: MaterialStateColor.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return Color(
                            0xFF1741AC); // Change the color when selected
                      } else {
                        return Color(0xFF1741AC); // Default color
                      }
                    },
                  ),
                  steps: [
                    Step(
                      isActive: controller.currentStep >= 0,
                      title: Text(
                        'Uploading Media',
                        style: TextStyleUtil.genSans400(fontSize: 14.kh),
                      ),
                      content: Text(''),
                    ),
                    Step(
                      isActive: controller.currentStep >= 1,
                      title: Text(
                        'Scanning & Analyzing Media',
                        style: TextStyleUtil.genSans400(fontSize: 14.kh),
                      ),
                      content: Text(''),
                    ),
                    Step(
                      isActive: controller.currentStep == 2,
                      title: Text(
                        'Generating Result',
                        style: TextStyleUtil.genSans400(fontSize: 14.kh),
                      ),
                      content: Text(''),
                    ),
                  ],
                  type: StepperType.vertical,
                  currentStep: controller.currentStep.value,
                ).paddingOnly(bottom: 20),
              )
            ],
          ),
        ).paddingOnly(top: 24.kh).paddingOnly(left: 16.kw, right: 16.kw),
      ),
    );
  }
}
