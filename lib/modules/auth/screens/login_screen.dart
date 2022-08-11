import 'package:flutter/material.dart';
import 'package:flutterfire_auth_georgeta/components/buttons/email_sign_in_button.dart';
import 'package:flutterfire_auth_georgeta/components/buttons/google_auth_button.dart';
import 'package:flutterfire_auth_georgeta/components/buttons/label_button.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/controller/auth_controller.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/email_sign_in_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/register_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/reset_password_screen.dart';
import 'package:flutterfire_auth_georgeta/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final AuthController authController = AuthController.to;
  LoginScreen({Key? key}) : super(key: key);

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
                EmailSignInButton(
                  onPressed: () {
                    Get.to(EmailSignInScreen());
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                GoogleSignInButton(
                    text: 'Iniciar sesión con Google',
                    onPressed: () {
                      authController.authWithGoogle();
                    }),
                const SizedBox(
                  height: 24,
                ),
                LabelButton(
                  labelText: '¿Aún no tienes cuenta? ¡Registrate!',
                  onPressed: () => Get.offAll(RegisterScreen()),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
