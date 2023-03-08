import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/accept_button.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/spacer.dart';
import 'package:mobile_test_task/constants/app_colors.dart';
import 'package:mobile_test_task/constants/app_styles.dart';
import 'package:mobile_test_task/constants/get_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/ali_fouad_logo.png'),
                  ),
                  const spacer(height: 20),
                  const Text(
                    'Welcome to the app',
                    style: headerTextStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  AcceptButton(
                    onPressed: () => Get.toNamed(AppRoutes.loginScreen),
                    buttonText: 'Login',
                    buttonStyle: acceptButtonStyle,
                  ),
                  const spacer(height: 14),
                  AcceptButton(
                    onPressed: () => Get.toNamed(AppRoutes.registerScreen),
                    buttonText: 'Register',
                    textColor: AppColors.primary,
                    buttonStyle: acceptButtonWithBorderStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Designed & Developes by ',
                    style: normalTextStyle,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Ali Fouad',
                      style: normalTextStyle.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
