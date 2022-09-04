import 'package:get/get.dart';
import 'package:login_firebase/app/modules/authentication/login/controllers/login_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
