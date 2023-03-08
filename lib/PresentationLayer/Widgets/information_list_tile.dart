import 'package:flutter/material.dart';
import 'package:mobile_test_task/constants/app_colors.dart';
import 'package:mobile_test_task/constants/app_styles.dart';

class InformationListTile extends StatelessWidget {
  InformationListTile({
    super.key,
    required this.text,
    required this.icon,
  });

  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 8,
      leading: Icon(
        icon,
        color: AppColors.primary,
      ),
      title: Text(
        text,
        style: normalTextStyle.copyWith(
            color: AppColors.lightGrey, fontWeight: FontWeight.bold),
      ),
    );
  }
}
