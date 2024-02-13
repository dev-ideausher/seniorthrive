import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../components/common_image_view.dart';
import '../../../../constants/image_constant.dart';
import '../../../../constants/seniorThriveAppBar.dart';
import '../../../../services/text_style_util.dart';
import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  const FaqView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Get.bottomSheet(TextToSpeechBottomSheet(), isScrollControlled: true);
        },
        child: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: context.darkblue),
          child:
              CommonImageView(svgPath: ImageConstant.svgread).paddingAll(16.kw),
        ),
      ),
      appBar: seniorThriveAppBar(
        title: Text(
          'FAQs',
          style: TextStyleUtil.genSans600(
            fontSize: 18.kh,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoSearchTextField(
              controller: controller.searchController,
              placeholder: 'Search questions',
              padding: EdgeInsets.all(14.kh),
              placeholderStyle: TextStyleUtil.genSans600(
                  fontSize: 16.kh, color: context.greyText),
              decoration: BoxDecoration(
                  border: Border.all(color: context.textFieldBordergrey),
                  borderRadius: BorderRadius.circular(16.kw)),
              prefixIcon: CommonImageView(
                svgPath: ImageConstant.svgsearchnormal,
              ),
              suffixIcon: Icon(CupertinoIcons.mic),
              onSubmitted: (tap) {
                print('tapped');
              },
            ).paddingOnly(top: 8.kh, bottom: 31.kh, left: 16.kw, right: 16.kw),
            Text("Frequently Asked",
                    style: TextStyleUtil.genSans700(fontSize: 18.kh))
                .paddingOnly(left: 16.kw, right: 16.kw),
            ListView.builder(
                itemCount: controller.title.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ExpansionTileGroup(children: [
                    ExpansionTileWithoutBorderItem(
                      title: Text(
                        controller.title[index],
                        style: TextStyleUtil.genSans600(fontSize: 14.kh),
                      ),
                      expendedBorderColor: Colors.red,
                      textColor: context.orange,
                      iconColor: context.orange,
                      children: [
                        Text(
                            "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years.",
                            style: TextStyleUtil.genSans400(
                                fontSize: 14.kh, color: context.greyText)),
                      ],
                    ),
                  ]);
                }),
          ],
        ),
      ),
    );
  }
}

class TextToSpeechBottomSheet extends StatelessWidget {
  final void Function()? onTap;

  const TextToSpeechBottomSheet({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FaqController controller = Get.find<FaqController>();

    return GestureDetector(
      onTap: onTap, // Call onTap callback for debugging
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
          color: Colors.white, // Adjust the color as needed
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: context.grey,
                      borderRadius: BorderRadius.circular(6.kw),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.volume_up,
                      ).paddingSymmetric(horizontal: 9.kw, vertical: 3.kh),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: context.darkblue,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.play,
                        color: Colors.white,
                      ).paddingAll(12.kh),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: context.grey,
                      borderRadius: BorderRadius.circular(6.kw),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Text(
                        '1.2x',
                        style: TextStyleUtil.genSans500(fontSize: 14.kh),
                      ).paddingSymmetric(horizontal: 9.kw, vertical: 3.kh),
                    ),
                  ),
                ],
              ).paddingOnly(left: 24.kw, right: 24.kw),
            ],
          ).paddingOnly(top: 18.kh, bottom: 28.kh),
        ),
      ),
    );
  }
}
