import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../controllers/subscriptionsettings_controller.dart';

class SubscriptionsettingsView extends GetView<SubscriptionsettingsController> {
  const SubscriptionsettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.blue,
      appBar: seniorThriveAppBar(
        title: Text(
          'Subscription Plan',
          style: TextStyleUtil.genSans600(fontSize: 18.kh, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: context.blue,
        iconcolor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  DottedBorder(
                    color: Colors.white,
                    strokeWidth: 1,
                    dashPattern: [6, 6],
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12.kw),
                    strokeCap: StrokeCap.butt,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0x19ffffff),
                          borderRadius: BorderRadius.circular(12.kw)),
                      child: Column(
                        children: [
                          Text(
                            'Senior Thrive Free',
                            style: TextStyleUtil.genSans600(
                                fontSize: 18.kh, color: Colors.white),
                          ).paddingOnly(bottom: 5.kh),
                          Text(
                            'CURRENT PLAN',
                            style: TextStyleUtil.genSans400(
                                fontSize: 13.kh, color: Colors.white),
                          ),
                        ],
                      ).paddingAll(16.kh),
                    ),
                  )
                ],
              ),
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
                    Text("Pick Your Plan",
                        style: TextStyleUtil.genSans800(
                          fontSize: 18.kh,
                        )),
                    Text(
                        "Many desktop publishing packages and web page editors now use Lorem Ipsum.",
                        style: TextStyleUtil.genSans400(
                          fontSize: 14.kh,
                        )).paddingOnly(top: 3.kh, bottom: 24.kh),
                    ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.kw),
                                gradient: controller.planContainerColor[index]),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(controller.planName[index],
                                        style: TextStyleUtil.genSans800(
                                            fontSize: 16.kh,
                                            color: Colors.white)),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text("\$123",
                                            style: TextStyleUtil.genSans800(
                                                fontSize: 20.kh,
                                                color: Colors.white)),
                                        Text("For 3 months",
                                            style: TextStyleUtil.genSans400(
                                                fontSize: 14.kh,
                                                color: Colors.white))
                                      ],
                                    ).paddingOnly(bottom: 27.kh)
                                  ],
                                ),
                                Text(
                                    "Many desktop publishing packages and web page editors now use Lorem Ipsum.",
                                    style: TextStyleUtil.genSans500(
                                        fontSize: 15.kh, color: Colors.white)),
                                seniorThiveButton(
                                  onPressed: () {},
                                  borderRadius: BorderRadius.circular(16.kw),
                                  label: 'View Plan',
                                  style:
                                      TextStyleUtil.genSans600(fontSize: 16.kh),
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.all(16.kh),
                                ).paddingOnly(top: 11.kh, bottom: 11.kh),
                                Text("Terms & conditions apply.",
                                    style: TextStyleUtil.genSans400(
                                        fontSize: 13.kh, color: Colors.white))
                              ],
                            ).paddingOnly(
                                left: 18.kw,
                                right: 18.kw,
                                top: 29.kh,
                                bottom: 19.kh),
                          ).paddingOnly(bottom: 16.kh);
                        })
                  ]).paddingOnly(
                  bottom: 16.kh, left: 8.kw, right: 8.kw, top: 44.kh),
            ).paddingOnly(top: 32.kh),
          ],
        ),
      ),
    );
  }
}
