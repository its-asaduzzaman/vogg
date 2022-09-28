import 'package:flutter/material.dart';
import 'package:vogg/utils/dimension.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        fontSize: size == 0 ? Dimension.font20 : size,
      ),
    );
  }
}
