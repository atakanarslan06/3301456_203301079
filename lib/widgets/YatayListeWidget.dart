import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../modeller/YatayListeModel.dart';
import '../veri/renkler.dart';

class YatayListWidget extends StatelessWidget {
  const YatayListWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        // Yatay Listenin Sol ekrandan uzaklığı
        padding: EdgeInsets.only(
          left: size.width * 0.05,
        ),
        child: Row(
          children: List.generate(
            listyatayData.length,
                (index) => Container(
                  // Yatay Liste Ayarları
              margin: EdgeInsets.only(
                right: size.width * 0.03,
                top: size.height*0.02,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  //Populer Yemek Resim Özellik
                  Image.asset(
                    listyatayData[index].image,
                    width: size.width * 0.35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 5,
                        ),
                        //Populer Yemek Text Özellik
                        child: Text(
                          listyatayData[index].title,
                          style: TextStyle(
                            fontSize: size.width * 0.045,
                            fontWeight: FontWeight.bold,
                            color: kTitleColor,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                              'lib/assets/icons/location_icon.svg'),
                          SizedBox(width: size.width * 0.01),
                          //Lokasyon Text Özellik
                          Text(
                            listyatayData[index].subTitle,
                            style: TextStyle(
                              fontSize: size.width * 0.03,
                              color: kTextColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}