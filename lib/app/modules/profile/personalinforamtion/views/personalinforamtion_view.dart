import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/constants/seniorThriveAppBar.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';
import 'package:seniorthrive/app/services/text_style_util.dart';

import '../../../../components/personalInformation/personalInfoBottomSheet.dart';
import '../../../../components/personalInformation/personalInforIndicator.dart';
import '../controllers/personalinforamtion_controller.dart';

class PersonalinforamtionView extends GetView<PersonalinforamtionController> {
  const PersonalinforamtionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: seniorThriveAppBar(),
        body: Column(
          children: [
            personalInfoIndicator(controller: controller),
            Expanded(
                child: PageView(
              onPageChanged: (index) {
                controller.currentPageIndex.value = index;
              },
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text('Personal Information',
                            style: TextStyleUtil.genSans700(
                                fontSize: 24.kh, color: Colors.black)),
                        IconButton(
                            onPressed: () {
                              Get.bottomSheet(personalInforBottomSheet());
                            },
                            icon: Icon(
                              CupertinoIcons.info,
                              color: context.darkgrey,
                            ))
                      ],
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16.kw),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Personal Information',
                        style: TextStyleUtil.genSans700(
                            fontSize: 24.kh, color: Colors.black)),
                  ],
                ).paddingSymmetric(horizontal: 16.kw),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Personal Information',
                        style: TextStyleUtil.genSans700(
                            fontSize: 24.kh, color: Colors.black)),
                  ],
                ).paddingSymmetric(horizontal: 16.kw)
              ],
            ))
          ],
        ));
  }
}
