// ignore_for_file: unnecessary_overrides

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController emailCF = TextEditingController();

  String? validEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please a Enter';
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      return 'Please a valid Email';
    }
    return null;
  }

  void btnSubmit() {
    if (formkey.currentState!.validate()) {
      log("successful");
      return;
    } else {
      log("UnSuccessfull");
    }
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
    emailCF.dispose();
    super.onClose();
  }
}
