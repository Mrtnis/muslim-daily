import 'package:flutter/material.dart';

import 'widgets/box_surah.dart';
import 'widgets/card_widget.dart';

class SurahScreen extends StatelessWidget {
  const SurahScreen({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.symmetric(vertical: 5),
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
            const BoxSurah(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: const Color(0xffE0E0E0),
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
              children: const [
                CardWidget(
                  cardColor: Color(0xffE192CA),
                  title: 'Waktu Sholat',
                ),
                CardWidget(
                  cardColor:Color(0xff9ECFF9),
                  title: 'Membaca \nAl-Qur\'an',
                ),
                CardWidget(
                  cardColor: Color(0xffFCBD7F),
                  title: 'Kumpulan Do\'a',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
