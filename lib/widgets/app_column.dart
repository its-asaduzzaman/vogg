import 'package:flutter/material.dart';
import 'package:vogg/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimension.font26,
        ),
        SizedBox(
          height: Dimension.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: Dimension.width10,
            ),
            SmallText(text: '4.5'),
            SizedBox(
              width: Dimension.width10,
            ),
            SmallText(text: '1536'),
            SizedBox(
              width: Dimension.width10,
            ),
            SmallText(text: 'comments'),
          ],
        ),
        SizedBox(
          height: Dimension.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                text: 'Normal',
                icon: Icons.circle_sharp,
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                text: '1.7Km',
                icon: Icons.location_on,
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                text: '32',
                icon: Icons.access_time_rounded,
                iconColor: AppColors.iconColor2),
          ],
        ),
      ],
    );
  }
}
