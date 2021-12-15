import 'package:flutter/material.dart';

class  CardWidget extends StatelessWidget {
  final Color? cardColor;
  final String title;
  // ignore: use_key_in_widget_constructors
  const CardWidget({this.cardColor, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}
