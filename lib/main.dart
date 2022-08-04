import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_auth_georgeta/firebase_options.dart';
import 'package:flutterfire_auth_georgeta/routes/app_pages.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}
