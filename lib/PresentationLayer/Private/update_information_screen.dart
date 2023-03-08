import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mobile_test_task/BussinessLayer/Controllers/user_controller.dart';
import 'package:mobile_test_task/DataLayer/Models/user.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/accept_button.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/custom_app_bar.dart';
import 'package:mobile_test_task/constants/app_colors.dart';

import '../../constants/app_styles.dart';
import '../Widgets/spacer.dart';

class UpdateInformationScreen extends StatelessWidget {
  UpdateInformationScreen({super.key});

  final userController = Get.find<UserController>();
  final User user = Get.arguments['user'];

  @override
  Widget build(BuildContext context) {
    userController.initializeUpdateUser();

    return Scaffold(
      appBar: customAppBar('Update Information'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  decoration: authInputsStyle,
                  controller: userController.updateNameController,
                ),
                const spacer(height: 18),
                IntlPhoneField(
                  initialValue: userController.countryCode,
                  //initialCountryCode: 'AE',
                  showDropdownIcon: false,
                  disableLengthCheck: true,
                  flagsButtonPadding: const EdgeInsets.only(left: 14),
                  decoration: authInputsStyle,
                  controller: userController.updatePhoneNumberController,
                ),
                const spacer(height: 18),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: authInputsStyle,
                  controller: userController.updateEmailController,
                ),
                const spacer(height: 18),
                AcceptButton(
                  onPressed: () {
                    userController.updateInformation();
                    Get.back();
                    Get.snackbar(
                      'Success',
                      'Your information is updated successfully',
                      colorText: AppColors.white,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      backgroundColor: AppColors.green,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  buttonText: 'Save',
                  buttonStyle: acceptButtonStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
