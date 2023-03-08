import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_test_task/constants/app_styles.dart';

import '../../constants/app_colors.dart';

class AcceptButton extends StatelessWidget {
  AcceptButton({
    super.key,
    required this.buttonText,
    required this.buttonStyle,
    this.textColor = AppColors.white,
    required this.onPressed,
  });

  String buttonText;
  ButtonStyle buttonStyle;
  Color textColor;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: SizedBox(
        width: Get.width,
        height: 50,
        child: Center(
          child: Text(
            buttonText,
            style: buttonTextStyle.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
