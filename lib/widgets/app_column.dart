import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_test.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) =>
                      Icon(Icons.star, color: AppColors.mainColor, size: 15)),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(height: 20),
            SmallText(text: "4.5"),
            SmallText(text: "1287"),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.inconColor1),
            SizedBox(
              width: 20,
            ),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "1.7km",
                iconColor: AppColors.mainColor),
            SizedBox(
              width: 20,
            ),
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "32mins",
                iconColor: AppColors.iconColor2),
          ],
        ),
      ],
    );
  }
}
