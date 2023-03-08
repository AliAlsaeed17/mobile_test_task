import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_test_task/PresentationLayer/Private/home_screen.dart';
import 'package:mobile_test_task/PresentationLayer/Private/update_information_screen.dart';
import 'package:mobile_test_task/constants/get_pages.dart';

void main() {
  runApp(const MobileTestTaskApp());
}

class MobileTestTaskApp extends StatelessWidget {
  const MobileTestTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mobile Test Task',
      getPages: getPages,
    );
  }
}
