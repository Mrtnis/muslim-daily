import 'package:flutter/material.dart';
import 'package:yaumil_app/constant.dart';

class BoxHome extends StatelessWidget {
  const BoxHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff8E89CF),
      ),
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/laptop-1.jpg',
              height: 100,
              width: 130,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '15.26',
                  style: TextStyle(
                    fontSize: textSize,
                    color: textColor,
                  ),
                ),
                Text(
                  '2 Jam 23 Menit',
                  style: TextStyle(
                    fontSize: textSize,
                    color: textColor,
                  ),
                ),
                Text(
                  'Menuju',
                  style: TextStyle(
                    fontSize: textSize,
                    color: textColor,
                  ),
                ),
                Text(
                  'Ashar',
                  style: TextStyle(
                    fontSize: textSize,
                    color: textColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
