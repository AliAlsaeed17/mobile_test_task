import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_test_task/DataLayer/Models/user.dart';
import 'package:mobile_test_task/PresentationLayer/Public/welcome_screen.dart';
import 'package:mobile_test_task/constants/get_routes.dart';

class AuthController extends GetxController {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  TextEditingController registerNameController = TextEditingController();
  TextEditingController registerPhoneNumberController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerRepasswordController = TextEditingController();
  String countryCode = "";

  User user = User(
    email: 'test@test.test',
    name: 'test01 t',
    phone: '55994452',
    countryCode: '+963',
  );

  Future<void> login() async {
    //Login Api Call
    print("login");
    Get.toNamed(AppRoutes.homeScreen);
  }

  Future<void> logout() async {
    //Logout Api Call
    print("logout");
    Get.offAllNamed(AppRoutes.welcomeScreen);
  }

  Future<void> register() async {
    //Register Api Call
    print("register");
    Get.toNamed(AppRoutes.homeScreen);
  }
}
