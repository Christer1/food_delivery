import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/utils/colors.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText({super.key, this.color = const Color(0xFFccc7c5), required this.text, this.size=12, this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      height: height,
      color: color,
      fontFamily: 'Roboto',
      fontSize: size
    ),
    );
  }
}