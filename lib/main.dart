import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login_firebase/app/controllers/auth_controller.dart';
import 'package:login_firebase/app/modules/authentication/login/views/login_view.dart';
import 'package:login_firebase/app/modules/dasboard/home/views/home_view.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/loading_view.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AuthController auth = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: auth.streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          log(snapshot.data.toString());
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Belajar Firebase Login",
            initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
            // home: snapshot.data != null ? const HomeView() : const LoginView(),
            getPages: AppPages.routes,
          );
        }
        return const LoadingView();
      },
    );
  }
}
