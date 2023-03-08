import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mobile_test_task/BussinessLayer/Controllers/auth_controller.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/Spacer.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/accept_button.dart';
import 'package:mobile_test_task/constants/app_colors.dart';
import 'package:mobile_test_task/constants/app_styles.dart';
import 'package:mobile_test_task/constants/get_routes.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

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
                    'Register',
                    style: headerTextStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.center,
                    decoration: authInputsStyle.copyWith(
                      hintText: 'Full Name',
                    ),
                    controller: authController.registerNameController,
                  ),
                  const spacer(height: 18),
                  IntlPhoneField(
                    initialCountryCode: 'AE',
                    showDropdownIcon: false,
                    disableLengthCheck: true,
                    flagsButtonPadding: const EdgeInsets.only(left: 14),
                    decoration: authInputsStyle.copyWith(
                      hintText: '55994435',
                    ),
                    controller: authController.registerPhoneNumberController,
                    onChanged: (value) {
                      authController.countryCode = value.countryCode;
                    },
                  ),
                  const spacer(height: 18),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    decoration: authInputsStyle.copyWith(
                      hintText: 'Email Address',
                    ),
                    controller: authController.registerEmailController,
                  ),
                  const spacer(height: 18),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    textAlign: TextAlign.center,
                    decoration: authInputsStyle.copyWith(
                      hintText: 'Password',
                      prefix: Container(width: 50),
                      suffixIcon: const Icon(Icons.visibility),
                    ),
                    controller: authController.registerPasswordController,
                  ),
                  const spacer(height: 18),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    textAlign: TextAlign.center,
                    decoration: authInputsStyle.copyWith(
                      hintText: 'Confirm Password',
                      prefix: Container(width: 60),
                      suffixIcon: const Icon(Icons.visibility),
                    ),
                    controller: authController.registerRepasswordController,
                  ),
                  const spacer(height: 32),
                  AcceptButton(
                    buttonText: 'Register',
                    buttonStyle: acceptButtonStyle,
                    onPressed: () => authController.register(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: normalTextStyle,
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.loginScreen),
                    child: Text(
                      'Login',
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
