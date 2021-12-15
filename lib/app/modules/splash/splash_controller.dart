import 'package:get/get.dart';
import 'package:yaumil_app/app/modules/surah/surah_screen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(Duration(seconds: 3), () => Get.off(SurahScreen()));
    super.onReady();
  }
}
