import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../services/text_style_util.dart';

class personalInforBottomSheet extends StatelessWidget {
  const personalInforBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(32.kw))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(CupertinoIcons.xmark).paddingOnly(
                      top: 20.kh,
                    )),
              ],
            ),
            Text("Personal Information",
                    style: TextStyleUtil.genSans700(
                        fontSize: 18.kh, color: Colors.black))
                .paddingOnly(top: 5.kh, bottom: 16.kw),
            Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                style: TextStyleUtil.genSans400(
                    fontSize: 16.kh, color: Colors.black))
          ],
        ).paddingSymmetric(horizontal: 19.kw),
      ),
    );
  }
}
