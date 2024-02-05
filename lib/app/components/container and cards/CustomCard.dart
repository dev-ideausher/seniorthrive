import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../constants/image_constant.dart';
import '../../services/text_style_util.dart';
import '../common_image_view.dart';

class CustomCard extends StatelessWidget {
  //CustomCard({});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      color: Colors.white,
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: context.grey),
            borderRadius: BorderRadius.circular(12.kw)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 170.kw,
              height: 153.kh,
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.kw),
                    child: CommonImageView(
                      imagePath: ImageConstant.pngbedRoomCard,
                      width: 170.kw,
                      height: 153.kh,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 36.kh,
                          width: 36.kw,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.kh),
                              borderRadius: BorderRadius.circular(8.kw)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.kw),
                            child: CommonImageView(
                              imagePath: ImageConstant.pngbedRoomCard,
                              fit: BoxFit.fill,
                              height: 36.kh,
                              width: 36.kh,
                            ),
                          ),
                        ).paddingOnly(top: 100.kh, right: 8.kw);
                      }).paddingOnly(right: 17.kw, left: 20.kw, bottom: 8.kh),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30.kw))),
                    child: Text(
                      'BedRoom',
                      style: TextStyleUtil.genSans400(
                          fontSize: 12.kw, color: Colors.white),
                    ).paddingOnly(left: 10.kw, top: 5.kh, bottom: 5.kh),
                  ).paddingOnly(top: 10.kh),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("23 Feb",
                        style: TextStyleUtil.genSans400(
                            fontSize: 13.kh, color: context.darkgrey))
                    .paddingOnly(top: 8.kh),
                Text("Bedroom Safety Enhancements",
                    style: TextStyleUtil.genSans600(
                      fontSize: 14.kh,
                    )),
                Row(
                  children: [
                    Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.kw),
                                color: context.darkRed),
                            child: Text(
                              '3 Critical',
                              style: TextStyleUtil.genSans500(
                                  fontSize: 12.kh, color: Colors.white),
                            ).paddingOnly(
                                left: 8.kw,
                                right: 8.kw,
                                top: 4.kh,
                                bottom: 4.kh))
                        .paddingOnly(right: 4.kw),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.kw),
                            color: context.green),
                        child: Text(
                          '2 Low',
                          style: TextStyleUtil.genSans500(
                              fontSize: 12.kh, color: Colors.white),
                        ).paddingOnly(
                            left: 8.kw, right: 8.kw, top: 4.kh, bottom: 4.kh))
                  ],
                ).paddingOnly(top: 11.kh, bottom: 15.kh),
              ],
            ).paddingOnly(
              left: 9.kw,
            ),
          ],
        ),
      ),
    );
  }
}
