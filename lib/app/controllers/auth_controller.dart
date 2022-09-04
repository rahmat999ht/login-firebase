import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void login(String email, String pass) async {
    try {
      // UserCredential user =
      await auth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('no user found for that email');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user');
      }
    }
  }

  void singup() {}
  void logout() async {
    await auth.signOut();
  }
}
