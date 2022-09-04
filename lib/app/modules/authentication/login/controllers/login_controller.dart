// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/auth_controller.dart';

class LoginController extends GetxController {
  final auth = Get.find<AuthController>();

  TextEditingController emailCL = TextEditingController();
  TextEditingController passwordCL = TextEditingController();

  var isObscureOld = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
