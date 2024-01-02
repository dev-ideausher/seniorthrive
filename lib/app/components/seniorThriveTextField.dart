import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../services/text_style_util.dart';
import 'common_image_view.dart';

class seniorThriveTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? svgPath;
  final bool obscureText;
  final String? imagePath;
  final Widget? suffixIcon;
  const seniorThriveTextField({
    super.key,
    this.controller,
    this.svgPath,
    this.imagePath,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyleUtil.genSans400(fontSize: 16.kh, color: Colors.black),
      obscureText: obscureText,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: CommonImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ).paddingAll(16.kh),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.orange),
              borderRadius: BorderRadius.circular(16.kw)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.grey),
              borderRadius: BorderRadius.circular(16.kw))),
    );
  }
}
