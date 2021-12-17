import 'package:get/get.dart';
import 'package:yaumil_app/app/models/surah_model.dart';
import 'package:yaumil_app/app/repository/surah_repository.dart';

class SurahController extends GetxController {
  RxList<SurahModel> listSurah = <SurahModel>[].obs;

  @override
  void onReady() {
    getDataSurah();
    super.onReady();
  }

  dynamic getDataSurah() {
    SurahRepository().getDataSurahApi().then((resp) {
      if (resp.statusCode == 200) {
        listSurah.value = [];
        for (var surah in resp.data['data']) {
          listSurah.add(SurahModel.fromJson(surah));
        }
      } else {
        Get.showSnackbar(const GetSnackBar(
          title: 'Error',
          message: 'Maaf, terjadi kesalahan di sistem kami',
        ));
      }
    });
  }
}
