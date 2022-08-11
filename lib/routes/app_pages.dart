// ignore_for_file: constant_identifier_names
import 'package:flutterfire_auth_georgeta/modules/auth/bindings/auth_binding.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/email_sign_in_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/login_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/home/screens/home_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/home/screens/initial_screen.dart';
import 'package:flutterfire_auth_georgeta/routes/app_routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.INITIAL,
      page: () => const InitialScreen(),
    ),
    GetPage(
      name: Routes.EMAILSIGNIN,
      page: () => EmailSignInScreen(),
    ),
  ];
}
