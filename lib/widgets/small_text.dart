import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;
  SmallText({
    Key? key,
    this.color = const Color(0XFFccc7C5),
    required this.text,
    this.size = 12,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
        height: height,
      ),
    );
  }
}
