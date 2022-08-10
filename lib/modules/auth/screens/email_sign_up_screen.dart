import 'package:flutter/material.dart';
import 'package:flutterfire_auth_georgeta/components/buttons/label_button.dart';
import 'package:flutterfire_auth_georgeta/components/buttons/primary_button.dart';
import 'package:flutterfire_auth_georgeta/components/forms/form_input_field_with_icon.dart';
import 'package:flutterfire_auth_georgeta/helpers/validators.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/controller/auth_controller.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/email_sign_in_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/login_screen.dart';
import 'package:flutterfire_auth_georgeta/widgets/logo_graphic_header_widget.dart';
import 'package:get/get.dart';

class EmailSignUpScreen extends StatelessWidget {
  final AuthController authController = AuthController.to;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  EmailSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.back();
      }),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LogoGraphicHeaderWidget(),
                  const SizedBox(
                    height: 48,
                  ),
                  FormInputFieldWithIcon(
                    controller: authController.emailController,
                    iconPrefix: Icons.email,
                    labelText: 'Email',
                    validator: Validator().email,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) =>
                        authController.emailController.text = value!,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  FormInputFieldWithIcon(
                    controller: authController.passwordController,
                    iconPrefix: Icons.lock,
                    maxLines: 1,
                    labelText: 'Contraseña',
                    validator: Validator().password,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    onChanged: (value) => null,
                    onSaved: (value) =>
                        authController.passwordController.text = value!,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  PrimaryButton(
                    labelText: "ENVIAR",
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        authController.registerWithEmailAndPassword();
                      }
                    },
                  ),
                  LabelButton(
                    labelText: '¿Ya tienes cuenta? ¡Inicia sesión!',
                    onPressed: () => Get.off(
                      EmailSignInScreen(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
