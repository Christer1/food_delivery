import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({super.key, this.color = const Color(0xFF332d2b), required this.text, this.overFlow=TextOverflow.ellipsis, this.size=0});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    overflow: overFlow,
    maxLines: 1,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      fontSize: size==0 ? Dimensions.font20 : size,
    ),
    );
  }
}