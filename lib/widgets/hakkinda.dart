import 'package:flutter/material.dart';
import 'package:neww/veri/renkler.dart';


class Hakkinda extends StatelessWidget {
  const Hakkinda({
    Key? key,
    required this.size,
    required this.index,
    required this.hakkinda,
  }) : super(key: key);

  final Size size;
  final int index;
  final String hakkinda;

  @override
  Widget build(BuildContext context) {
    return Text(
      hakkinda,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: kTextColor,
        fontSize: 20,
      ),
    );
  }
}