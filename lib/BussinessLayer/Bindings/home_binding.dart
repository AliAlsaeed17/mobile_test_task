import 'package:get/get.dart';
import 'package:mobile_test_task/BussinessLayer/Controllers/user_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(UserController());
  }
}
