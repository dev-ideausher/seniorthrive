import 'package:flutter/material.dart';
import 'package:seniorthrive/app/components/common_image_view.dart';
import 'package:seniorthrive/app/services/colors.dart';

class seniorThiveButton extends StatelessWidget {
  final Function() onPressed;
  final Color? backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final BorderSide side;
  final String? label;
  final TextStyle? style;
  final String? imagePath;
  final String? svgPath;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry iconPadding;
  seniorThiveButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    required this.borderRadius,
    this.label,
    this.style,
    this.iconPadding = EdgeInsets.zero,
    this.padding,
    this.side = BorderSide.none,
    this.imagePath,
    this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? context.orange,
            elevation: 0,
            padding: padding,
            shape:
                RoundedRectangleBorder(borderRadius: borderRadius, side: side)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: iconPadding,
              child: CommonImageView(
                imagePath: imagePath,
                svgPath: svgPath,
              ),
            ),
            Text(
              label!,
              style: style,
            ),
          ],
        ));
  }
}
