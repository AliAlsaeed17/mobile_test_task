import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_test_task/BussinessLayer/Controllers/auth_controller.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/Spacer.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/accept_button.dart';
import 'package:mobile_test_task/constants/app_colors.dart';
import 'package:mobile_test_task/constants/app_styles.dart';
import 'package:mobile_test_task/constants/get_routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final authController = Get.find<AuthController>();

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
                    'Login',
                    style: headerTextStyle,
                  ),
                ],
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      decoration: authInputsStyle.copyWith(
                        hintText: 'Email Address',
                      ),
                      controller: authController.loginEmailController,
                    ),
                    const spacer(height: 18),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      textAlign: TextAlign.center,
                      decoration: authInputsStyle.copyWith(
                        hintText: 'Password',
                        suffixIcon: const Icon(Icons.visibility),
                      ),
                      controller: authController.loginPasswordController,
                    ),
                    const spacer(height: 32),
                    AcceptButton(
                      buttonText: 'Login',
                      buttonStyle: acceptButtonStyle,
                      onPressed: () => authController.login(),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: normalTextStyle,
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.registerScreen),
                    child: Text(
                      'Register',
                      style: normalTextStyle.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
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
