import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_auth_georgeta/routes/app_routes.dart';
import 'package:flutterfire_auth_georgeta/services/firebase_auth_services.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rxn<User> firebaseUser = Rxn<User>();
  FirebaseAuthServices firebaseAuthServices = FirebaseAuthServices();
  static AuthController to = Get.find();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onReady() {
    ever(firebaseUser, handleAuthChanged);

    firebaseUser.bindStream(firebaseAuthServices.user);

    super.onReady();
  }

  handleAuthChanged(firebaseUser) async {
    if (firebaseUser == null) {
      Get.offAllNamed(Routes.LOGIN);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }

  signInWithEmailAndPassword() {
    firebaseAuthServices.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  registerWithEmailAndPassword() {
    firebaseAuthServices.registerWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }
}
