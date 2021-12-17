import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yaumil_app/constant.dart';

class BoxSurah extends StatelessWidget {
  const BoxSurah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/al-Quran.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Bacaan Terakhir',
            style: TextStyle(fontSize: 12),
          ),
          Text(
            'Surah Al-Fatihah \nAyat 1',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
