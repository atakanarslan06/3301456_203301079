import 'package:flutter/material.dart';
import 'package:neww/veri/renkler.dart';


class BaslikWidget extends StatelessWidget {
  const BaslikWidget({
    Key? key,
    required this.size,
    required this.index,
    required this.name,
  }) : super(key: key);

  final Size size;
  final int index;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        color: kTitleColor,
        fontWeight: FontWeight.bold,
        fontSize: size.width * 0.055,
      ),
    );
  }
}