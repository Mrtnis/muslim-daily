// package
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// screen
import 'package:yaumil_app/app/modules/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
