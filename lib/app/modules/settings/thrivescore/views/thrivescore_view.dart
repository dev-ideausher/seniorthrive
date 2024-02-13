import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/constants/image_constant.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../components/container and cards/scoreCard.dart';
import '../../../../services/text_style_util.dart';
import '../controllers/thrivescore_controller.dart';

class ThrivescoreView extends GetView<ThrivescoreController> {
  const ThrivescoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.blue,
      appBar: AppBar(
        title: const Text('ThrivescoreView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    color: context.blue,
                    child: pointsCard().paddingOnly(
                        left: 16.kw, right: 16.kw, top: 8.kh, bottom: 16.kh)),
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
                    Text("ThrivePoints History",
                        textAlign: TextAlign.center,
                        style: TextStyleUtil.genSans700(
                          fontSize: 18.kh,
                        )).paddingOnly(top: 21.kh),
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    CommonImageView(
                                      imagePath: ImageConstant.pngScoreicon,
                                    ),
                                    Container(
                                      width: 2.kw,
                                      color: context.grey,
                                      height: 140,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  // Wrap with Expanded
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "01 Dec 2023",
                                        textAlign: TextAlign.center,
                                        style: TextStyleUtil.genSans500(
                                          fontSize: 14.kh,
                                          color: context.greyText,
                                        ),
                                      ),
                                      Text(
                                        "20 ThrivePoints earned",
                                        textAlign: TextAlign.center,
                                        style: TextStyleUtil.genSans700(
                                          fontSize: 16.kh,
                                        ),
                                      ).paddingOnly(top: 8.kh, bottom: 8.kh),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.kw),
                                          border:
                                              Border.all(color: context.grey),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.kw),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .pngbathRoomCard,
                                                height: 95.kh,
                                                width: 88.kh,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Slippery Floor",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyleUtil
                                                        .genSans700(
                                                      fontSize: 16.kh,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Consider placing non-slip mats ddddddddddddddddddddddddddddddd",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyleUtil
                                                        .genSans400(
                                                      fontSize: 15.kh,
                                                    ),
                                                  ),
                                                ],
                                              ).paddingOnly(left: 8.kw),
                                            ),
                                          ],
                                        ).paddingAll(8.kw),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    )
                  ]).paddingOnly(bottom: 300.kh, left: 8.kw, right: 8.kw),
            ),
          ],
        ),
      ),
    );
  }
}
