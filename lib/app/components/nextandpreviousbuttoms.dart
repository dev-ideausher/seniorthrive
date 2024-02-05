import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

class nextandprevioudbutton extends StatelessWidget {
  void Function()? onTapNext;
  final double? size;
  void Function()? onTapPrevious;
  nextandprevioudbutton({
    super.key,
    this.onTapNext,
    this.onTapPrevious,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTapNext,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.grey,
            ),
            child: Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
              size: size,
            ).paddingAll(5.kw),
          ).paddingOnly(right: 8.kw),
        ),
        GestureDetector(
          onTap: onTapPrevious,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.blue,
            ),
            child: Icon(
              Icons.chevron_right_rounded,
              color: Colors.white,
              size: size,
            ).paddingAll(5.kw),
          ),
        ),
      ],
    );
  }
}
