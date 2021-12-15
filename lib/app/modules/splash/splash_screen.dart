import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:yaumil_app/app/modules/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            image: AssetImage('images/chat.png'),
            width: 250,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
