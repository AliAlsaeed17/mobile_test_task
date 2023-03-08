import 'package:get/get.dart';
import 'package:mobile_test_task/BussinessLayer/Bindings/auth_binging.dart';
import 'package:mobile_test_task/BussinessLayer/Bindings/home_binding.dart';
import 'package:mobile_test_task/PresentationLayer/Auth/login_screen.dart';
import 'package:mobile_test_task/PresentationLayer/Auth/register_screen.dart';
import 'package:mobile_test_task/PresentationLayer/Private/home_screen.dart';
import 'package:mobile_test_task/PresentationLayer/Private/update_information_screen.dart';
import 'package:mobile_test_task/PresentationLayer/Public/welcome_screen.dart';
import 'package:mobile_test_task/constants/get_routes.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
    name: AppRoutes.welcomeScreen,
    page: () => WelcomeScreen(),
  ),
  GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding()),
  GetPage(
      name: AppRoutes.registerScreen,
      page: () => RegisterScreen(),
      binding: AuthBinding()),
  GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
      binding: HomeBindings()),
  GetPage(
      name: AppRoutes.updateInformationScreen,
      page: () => UpdateInformationScreen())
];
