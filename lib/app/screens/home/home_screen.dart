import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:yaumil_app/constant.dart';

// widget
import 'package:yaumil_app/app/widgets/home/box_home.dart';
import 'package:yaumil_app/app/widgets/home/card_widget.dart';

// screen
import 'package:yaumil_app/app/screens/sholat/jadwal.dart';
import 'package:yaumil_app/app/screens/surah/surah_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: const Text('Setiabudi, Medan'),
              padding: const EdgeInsets.only(bottom: 5, top: 10),
            ),
            Container(
              child: const Text(
                'Rabu, 15 Desember 2021',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              padding: const EdgeInsets.only(bottom: 5),
            ),
            const BoxHome(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Terakhir dibaca'),
                  Spacer(),
                  Text('Al Fatihah Ayat 1'),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1,
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              children: [
                CardWidget(
                  cardColor: const Color(0xffE192CA),
                  title: 'Waktu Sholat',
                  changePage: () => Get.to(const JadwalSholatScreen()),
                ),
                CardWidget(
                  cardColor: const Color(0xff9ECFF9),
                  title: 'Membaca \nAl-Qur\'an',
                  changePage: () => Get.to(SurahScreen()),
                ),
                CardWidget(
                  cardColor: const Color(0xffFCBD7F),
                  title: 'Kumpulan Do\'a',
                  changePage: () => Get.snackbar('Fitur', 'Cooming Soon',
                      duration: const Duration(seconds: 1),
                      backgroundColor: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
