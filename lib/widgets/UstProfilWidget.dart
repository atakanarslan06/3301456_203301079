import 'package:flutter/material.dart';
import 'package:neww/veri/renkler.dart';
import 'package:neww/widgets/BildirimWidget.dart';

class UstProfilWidget extends StatelessWidget {
  const UstProfilWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: size.height * 0.1),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.045,
        vertical: size.height * 0.015,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 3,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
          backgroundColor: Colors.grey,
        backgroundImage: AssetImage('lib/assets/images/atknn.png'),
      ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Atakan Arslan',
                style: TextStyle(
                  color: kTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.05,
                ),
              ),
              Text(
                '203301079@ogr.selcuk.edu.tr',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.width * 0.035,
                ),
              ),
            ],
          ),
          BildirimWidget(size: size),
        ],
      ),
    );
  }
}