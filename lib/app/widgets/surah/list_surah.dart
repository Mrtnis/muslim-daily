import 'package:flutter/material.dart';
import 'package:yaumil_app/app/models/surah_model.dart';
import 'package:yaumil_app/constant.dart';

class ListSurah extends StatelessWidget {
  final SurahModel surah;

  // ignore: use_key_in_widget_constructors
  const ListSurah({required this.surah});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // number
          Container(
            width: 38,
            height: 38,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: secondaryColor,
            ),
            child: Center(
              child: Text(
                "${surah.id}",
                style: const TextStyle(
                  color: secondaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          // title and desc
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${surah.title}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${surah.meaning} | ${surah.numberOfAyat}",
                style: const TextStyle(
                  color: secondaryTextColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),
          // text arabic
          Text('${surah.arabic}'),
        ],
      ),
    );
  }
}
