import 'package:get/get.dart';

// screens
import 'package:yaumil_app/app/screens/home/home_screen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.off(
        () => const HomeScreen(),
      ),
    );
    super.onReady();
  }
}
