import 'package:flutter/material.dart';
import 'package:yaumil_app/constant.dart';

class SkeletonSurah extends StatelessWidget {
  const SkeletonSurah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
