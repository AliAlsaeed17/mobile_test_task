import 'package:flutter/material.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/spacer.dart';
import 'package:mobile_test_task/constants/app_colors.dart';
import 'package:mobile_test_task/constants/app_styles.dart';

class SuccessAlert extends StatelessWidget {
  SuccessAlert({super.key, required this.message});

  String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'Success',
            style: titleTextStyle.copyWith(
              color: AppColors.white,
            ),
          ),
          spacer(),
          Text(
            message,
            style: normalTextStyle,
          )
        ],
      ),
    );
  }
}
