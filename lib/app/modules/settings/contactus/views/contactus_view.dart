import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/components/seniorThriveTextField.dart';
import 'package:seniorthrive/app/constants/customButton.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../../constants/seniorThriveAppBar.dart';
import '../../../../services/text_style_util.dart';
import '../controllers/contactus_controller.dart';

class ContactusView extends GetView<ContactusController> {
  const ContactusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: seniorThriveAppBar(
          title: Text(
            'Contact Us',
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
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Questions 0r Any Feedback?",
                      style: TextStyleUtil.genSans600(
                        fontSize: 16.kh,
                      ),
                    ),
                    Text(
                      '${controller.enteredText.value.length.toString()}/24',
                      style: TextStyleUtil.genSans600(
                          fontSize: 16.kh, color: context.greyText),
                    )
                  ],
                ),
              ),
              seniorThriveTextField(
                controller: controller.feedbackController,
                maxLines: 5,
                hintText: 'Write Here',
                onChanged: (value) {
                  controller.enteredText.value = value;
                  controller.isDisabled.value = false;
                },
              ).paddingOnly(top: 8.kh, bottom: 12.kh),
              Text(
                  "Write any question or feedback, you can expect the revert with in 24hrs on your registerd email Id.",
                  style: TextStyleUtil.genSans400(
                      fontSize: 14.kh, color: context.greyText)),
              Obx(
                () => seniorThiveButton(
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(16.kw),
                  label: 'Submit',
                  padding: EdgeInsets.all(16.kh),
                  backgroundColor: controller.isDisabled == true
                      ? context.orange.withOpacity(0.5)
                      : context.orange,
                ),
              ).paddingOnly(top: 420.kh)
            ],
          ).paddingOnly(left: 16.kw, right: 16.kw),
        ));
  }
}
