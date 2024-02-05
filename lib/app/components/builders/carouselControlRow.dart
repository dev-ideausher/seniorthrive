import 'package:flutter/material.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../services/text_style_util.dart';
import '../nextandpreviousbuttoms.dart';

class carouselControlRow extends StatelessWidget {
  final String title;
  const carouselControlRow({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            textAlign: TextAlign.center,
            style: TextStyleUtil.genSans600(
              fontSize: 16.kh,
            )),
        nextandprevioudbutton(
          size: 24.kw,
        )
      ],
    );
  }
}
