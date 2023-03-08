import 'package:flutter/material.dart';
import 'package:mobile_test_task/constants/app_colors.dart';
import 'package:mobile_test_task/constants/app_styles.dart';

class SettingsListTile extends StatelessWidget {
  SettingsListTile({
    super.key,
    required this.titleText,
    required this.onTap,
  });

  String titleText;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        shape: const Border(
          bottom: BorderSide(
            color: AppColors.lightGrey,
            width: 1,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.primary,
        ),
        title: Text(
          titleText,
          style: titleTextStyle.copyWith(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
