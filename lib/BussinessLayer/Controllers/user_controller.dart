import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile_test_task/DataLayer/Models/user.dart';
import 'package:mobile_test_task/constants/app_colors.dart';

import 'auth_controller.dart';

class UserController extends GetxController {
  final authController = Get.find<AuthController>();

  TextEditingController? updateNameController;
  TextEditingController? updateEmailController;
  TextEditingController? updatePhoneNumberController;
  String? countryCode;

  initializeUpdateUser() {
    updateNameController =
        TextEditingController(text: authController.user.name);
    updateEmailController =
        TextEditingController(text: authController.user.email);
    updatePhoneNumberController =
        TextEditingController(text: authController.user.phone);
    countryCode = authController.user.countryCode;
  }

  Future<bool> updateInformation() async {
    //Update api call
    print('Update');
    return true;
  }

  Future<bool> changePassword(
      String password, String confirmPassword, String currentPassword) async {
    //Change password api call
    print('Change password');
    return true;
  }

  Future<bool> deleteAccount() async {
    //Delete api call
    print('Delete');
    return true;
  }
}
