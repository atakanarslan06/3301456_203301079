import 'package:flutter/cupertino.dart';

class AfisModel {
  final String title;
  final String imageBanner;
  final String topImage;
  final gradientColor;

  AfisModel({
    required this.imageBanner,
    required this.title,
    required this.topImage,
    required this.gradientColor,
  });
}

List<AfisModel> afis = <AfisModel>[
  AfisModel(
    title: 'Büyük İndirim',
    imageBanner: 'lib/assets/images/banner_image1.png',
    topImage: 'lib/assets/images/burger.png',
    gradientColor: const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xffFF9F06),
        Color(0xffFFE1B4),
      ],
    ),
  ),
  AfisModel(
    title: 'Yeni Gelen',
    imageBanner: 'lib/assets/images/banner_image2.png',
    topImage: 'lib/assets/images/dominos.png',
    gradientColor: const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xff00D756),
        Color(0xff018AC5),
      ],
    ),
  ),
];