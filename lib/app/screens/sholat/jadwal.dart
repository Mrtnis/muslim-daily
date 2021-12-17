import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yaumil_app/constant.dart';

class JadwalSholatScreen extends StatelessWidget {
  const JadwalSholatScreen({Key? key}) : super(key: key);

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
          'Waktu Sholat',
          style: TextStyle(fontSize: 14, color: secondaryTextColor),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Icon(Icons.location_pin),
                  SizedBox(width: 10),
                  Text('Medan'),
                  Spacer(),
                  Icon(Icons.expand_more),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
