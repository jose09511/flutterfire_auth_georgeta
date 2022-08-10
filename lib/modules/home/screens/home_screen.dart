import 'package:flutter/material.dart';
import 'package:flutterfire_auth_georgeta/modules/auth/controller/auth_controller.dart';
import 'package:flutterfire_auth_georgeta/services/firebase_auth_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        FirebaseAuthServices().signOut();
      }),
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
