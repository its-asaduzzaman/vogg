import 'package:flutter/material.dart';
import 'package:vogg/utils/dimension.dart';
import 'package:vogg/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimension.iconSize24,
        ),
        SizedBox(
          width: Dimension.width5,
        ),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
