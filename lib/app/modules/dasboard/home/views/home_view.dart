import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login_firebase/app/shared/widgets/button/button_primary_custom.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        backgroundColor: Colors.black87,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: ButtonPrimaryCustom(
            text: 'Log-out',
            onPressed: () {
              controller.auth.logout();
            },
          ),
        ),
      ),
    );
  }
}
