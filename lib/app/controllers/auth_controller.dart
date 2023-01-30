import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void login(String email, String pass) async {
    try {
      UserCredential myUser = await auth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      if (myUser.user!.emailVerified) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.defaultDialog(
          title: 'Verify email',
          middleText: 'Silahkan verifikasi email anda!',
        );
      }
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('no user found for that email');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user');
      }
    }
  }

  void singup(String email, String pass) async {
    try {
      UserCredential myUser = await auth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      await myUser.user!.sendEmailVerification();
      Get.defaultDialog(
        title: 'Verify email',
        middleText:
            'Kami telah mengirimkan verifikasi ke $email, \n harap verifikasi untuk melanjutkan',
        onConfirm: () {
          Get.back(); // close dialog
          Get.back(); // back to login
        },
        textConfirm: 'Ya saya akan mengeceknya',
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        log('no user found for that email');
        Get.defaultDialog(
          title: 'Terjadi kesalahan',
          middleText: 'no user found for that email',
        );
      } else if (e.code == 'weak-password') {
        log('Wrong password provided for that user');
        Get.defaultDialog(
          title: 'Terjadi kesalahan',
          middleText: 'Wrong password provided for that user',
        );
      }
    } catch (e) {
      log(e.toString());
      Get.defaultDialog(
        title: 'Terjadi kesalahan',
        middleText: 'Anda tidak bisa memakai akun ini',
      );
    }
  }

  void logout() async {
    await auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
