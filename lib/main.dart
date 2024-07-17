import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'src/login_register/login.dart'; // Ensure you have the correct path to your login.dart file

void main() async {
  // final settingsController = SettingsController(SettingsService());

  // await settingsController.loadSettings();

  runApp(const MyApp()
      // MyApp(settingsController: settingsController)
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}
