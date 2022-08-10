import 'package:flutter/material.dart';
import 'package:flutterfire_auth_georgeta/components/buttons/email_sign_in_button.dart';
import 'package:flutterfire_auth_georgeta/components/buttons/email_sign_up_button.dart';
import 'package:flutterfire_auth_georgeta/components/buttons/label_button.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/email_sign_up_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/login_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/reset_password_screen.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: SizedBox(
              height: 200,
              child: Image.asset("assets/images/flutteracademy-logo.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  child: EmailSignUpButton(
                    onPressed: () {
                      Get.to(EmailSignUpScreen());
                    },
                  ),
                ),
                LabelButton(
                    labelText: '¿Ya tienes cuenta? ¡Inicia sesión!',
                    onPressed: () => Get.offAll(const LoginScreen())),
              ],
            ),
          )
        ],
      ),
    );
  }
}
