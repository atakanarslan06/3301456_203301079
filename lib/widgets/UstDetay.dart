import 'package:flutter/material.dart';
import '../veri/renkler.dart';

class UstDetay extends StatelessWidget {
  const UstDetay({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.08,
          padding: const EdgeInsets.only(
            bottom: 15,
          ),
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kBirinciColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(
                  20,
                ),
                bottomRight: Radius.circular(
                  20,
                )),
          ),
          child: Text(
            'Restoran Detayı',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.045,
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 15,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}