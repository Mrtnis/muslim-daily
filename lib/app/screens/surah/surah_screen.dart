import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:yaumil_app/app/widgets/surah/skeleton_surah.dart';
import 'package:yaumil_app/constant.dart';
import 'package:yaumil_app/app/controllers/surah_controller.dart';

// widgets
import 'package:yaumil_app/app/widgets/surah/box_surah.dart';
import 'package:yaumil_app/app/widgets/surah/list_surah.dart';

class SurahScreen extends StatelessWidget {
  SurahScreen({Key? key}) : super(key: key);

  final surahCtr = Get.put(SurahController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: secondaryTextColor,
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'List Surah',
          style: TextStyle(fontSize: 14, color: secondaryTextColor),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Assalamu\'alaikum',
              style: TextStyle(color: secondaryTextColor, fontSize: 13),
            ),
            const Text(
              'Sahibul Muslim',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const BoxSurah(),
            const SizedBox(height: 20),
            // list surah
            Obx(() {
              if (surahCtr.listSurah.isNotEmpty) {
                return Column(
                  children: surahCtr.listSurah
                      .map((surah) => ListSurah(surah: surah))
                      .toList(),
                );
              } else {
                return Column(
                  children: [
                    for (var i = 0; i < 10; i++) const SkeletonSurah(),
                  ],
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
