import 'package:flutter/material.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../services/text_style_util.dart';

class seniorThriveTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? svgPath;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String? imagePath;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  void Function(String)? onChanged;
  final TextStyle? hintStyle;
  seniorThriveTextField(
      {super.key,
      this.controller,
      this.svgPath,
      this.imagePath,
      this.obscureText = false,
      this.suffixIcon,
      this.validator,
      this.hintText,
      this.hintStyle,
      this.prefixIcon,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyleUtil.genSans400(fontSize: 16.kh, color: Colors.black),
      obscureText: obscureText,
      obscuringCharacter: '*',
      onChanged: onChanged,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: hintStyle,
          prefixIcon: prefixIcon,
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(16.kw)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(16.kw)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.orange),
              borderRadius: BorderRadius.circular(16.kw)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.grey),
              borderRadius: BorderRadius.circular(16.kw))),
    );
  }
}
