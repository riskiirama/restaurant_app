import 'package:flutter/material.dart';
import 'package:restaurant/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextOverflow overflow;
  BigText({
    Key? key,
    this.color = const Color(0XFF332d2b),
    required this.text,
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size == 0 ? Dimensions.font20 : size,
      ),
    );
  }
}
