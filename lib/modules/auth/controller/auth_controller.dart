import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/screens/login_screen.dart';
import 'package:flutterfire_auth_georgeta/modules/home/screens/home_screen.dart';
import 'package:flutterfire_auth_georgeta/services/firebase_auth_services.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rxn<User> firebaseUser = Rxn<User>();
  FirebaseAuthServices firebaseAuthServices = FirebaseAuthServices();
  @override
  void onReady() {
    ever(firebaseUser, handleAuthChanged);

    firebaseUser.bindStream(firebaseAuthServices.user);

    super.onReady();
  }

  handleAuthChanged(firebaseUser) async {
    if (firebaseUser == null) {
      Get.offAll(() => const LoginScreen());
    } else {
      Get.offAll(() => const HomeScreen());
    }
  }
}
