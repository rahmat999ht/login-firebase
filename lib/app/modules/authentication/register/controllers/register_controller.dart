// ignore_for_file: unnecessary_overrides

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/auth_controller.dart';

class RegisterController extends GetxController {
  AuthController auth = Get.put(AuthController());

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController nameCR = TextEditingController();
  TextEditingController emailCR = TextEditingController();
  TextEditingController contactCR = TextEditingController();
  TextEditingController passwordCR = TextEditingController();
  TextEditingController comfirmPasswordCR = TextEditingController();

  var isObscureOld = true.obs;

  void obscure() {
    isObscureOld.value = !isObscureOld.value;
  }

  void btnRegis() {
    if (formkey.currentState!.validate()) {
      auth.singup(emailCR.text, passwordCR.text);
      log("successful");
      return;
    } else {
      log("UnSuccessfull");
    }
  }

  String? validEmpty(String? value) {
    if (value!.isEmpty) {
      return 'cannot be blank';
    }
    return null;
  }

  String? validEmail(String? value) {
    if (value!.isEmpty) {
      return 'cannot be blank';
    } else if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
        .hasMatch(value)) {
      return 'Please a valid Email';
    }
    return null;
  }

  String? validPass(String? value) {
    if (value!.isEmpty) {
      return 'cannot be blank';
    } else if (value.length < 5) {
      return 'Pass min 6 characters';
    }
    log(passwordCR.text);
    return null;
  }

  String? validComPass(String? value) {
    if (value!.isEmpty) {
      return 'cannot be blank';
    } else if (value.length < 5) {
      return 'Pass min 6 characters';
    }
    log(passwordCR.text);
    log(comfirmPasswordCR.text);
    if (passwordCR.text != comfirmPasswordCR.text) {
      return "Password does not match";
    }
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
    nameCR.dispose();
    emailCR.dispose();
    contactCR.dispose();
    passwordCR.dispose();
    comfirmPasswordCR.dispose();
    super.onClose();
  }
}
