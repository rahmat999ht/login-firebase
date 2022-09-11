// ignore_for_file: unnecessary_overrides

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/auth_controller.dart';

class LoginController extends GetxController {
  final auth = Get.find<AuthController>();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailCL = TextEditingController();
  TextEditingController passwordCL = TextEditingController();

  // TextEditingController emailCL = TextEditingController(text: 'tess@gmail.com');
  // TextEditingController passwordCL = TextEditingController(text: '123123');

  var isObscureOld = true.obs;

  void obscure() {
    isObscureOld.value = !isObscureOld.value;
  }

  void btnLogin() {
    auth.login(
      emailCL.text,
      passwordCL.text,
    );
    if (formkey.currentState!.validate()) {
      log("successful");
      return;
    } else {
      log("UnSuccessfull");
    }
  }

  String? validEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please a Enter';
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      return 'Please a valid Email';
    }
    return null;
  }

  String? validPass(String? value) {
    if (value != null && value.length > 5) {
      return 'Please re-enter password';
    }
    log(passwordCL.text);
    return null;
  }

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
    emailCL.dispose();
    passwordCL.dispose();
    super.onClose();
  }
}
