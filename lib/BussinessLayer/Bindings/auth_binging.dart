import 'package:get/get.dart';
import 'package:mobile_test_task/BussinessLayer/Controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
