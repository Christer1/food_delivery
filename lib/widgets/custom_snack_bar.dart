import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  static void showSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      backgroundColor: AppColors.mainColor, 
      colorText: Colors.white
    );
  }
}
