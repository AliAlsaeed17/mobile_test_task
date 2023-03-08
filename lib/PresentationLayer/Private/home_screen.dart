import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_test_task/BussinessLayer/Controllers/auth_controller.dart';
import 'package:mobile_test_task/BussinessLayer/Controllers/user_controller.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/custom_app_bar.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/information_list_tile.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/settings_list_tile.dart';
import 'package:mobile_test_task/PresentationLayer/Widgets/spacer.dart';
import 'package:mobile_test_task/constants/app_colors.dart';
import 'package:mobile_test_task/constants/app_styles.dart';
import 'package:mobile_test_task/constants/get_routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final authController = Get.find<AuthController>();
  final userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Home Page'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      InformationListTile(
                        text: authController.user.name,
                        icon: Icons.person,
                      ),
                      InformationListTile(
                        text: authController.user.countryCode +
                            ' ' +
                            authController.user.phone,
                        icon: Icons.phone_android,
                      ),
                      InformationListTile(
                        text: authController.user.email,
                        icon: Icons.email_outlined,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SettingsListTile(
                      titleText: 'Update Information',
                      onTap: () => Get.toNamed(
                        AppRoutes.updateInformationScreen,
                        arguments: {
                          'user': authController.user,
                        },
                      ),
                    ),
                    const spacer(),
                    SettingsListTile(
                      titleText: 'Change Password',
                      onTap: () {},
                    ),
                    const spacer(),
                    SettingsListTile(
                      titleText: 'Delete Account',
                      onTap: () {},
                    ),
                    const spacer(),
                    SettingsListTile(
                      titleText: 'Logout',
                      onTap: () => authController.logout(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
