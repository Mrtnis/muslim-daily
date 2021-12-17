import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:yaumil_app/constant.dart';

// widgets
import 'package:yaumil_app/app/widgets/surah/box_surah.dart';
import 'package:yaumil_app/app/widgets/surah/listSurah.dart';

class SurahScreen extends StatelessWidget {
  SurahScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> dataSurah = [
    {"id": 1, "title": "Al-Fatihah", "meaning": "Pembukaan", "ayat": 7},
    {"id": 2, "title": "Al-Baqarah", "meaning": "Sapi Betina", "ayat": 286},
    {"id": 3, "title": "Ali-Imran", "meaning": "Keluarga Imran", "ayat": 200},
    {"id": 4, "title": "An-Nisa", "meaning": "Wanita", "ayat": 176},
    {"id": 5, "title": "Al-Maidah", "meaning": "Jamuan Hidangan", "ayat": 120},
  ];

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
              Column(
                children:
                    dataSurah.map((surah) => ListSurah(surah: surah)).toList(),
              )
            ],
          ),
        ));
  }
}
