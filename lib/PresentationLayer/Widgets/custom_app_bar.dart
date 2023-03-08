import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_test_task/constants/app_colors.dart';
import 'package:mobile_test_task/constants/app_styles.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: AppColors.primary,
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
    ),
    title: Text(
      title,
      style: appBarTextStyle,
    ),
  );
}
