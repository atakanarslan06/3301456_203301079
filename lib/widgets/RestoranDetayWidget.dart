import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../veri/renkler.dart';

class RestoranDetay extends StatelessWidget {
  const RestoranDetay({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.03,
      ),
      margin: const EdgeInsets.only(
        top: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Meşhur Adıyaman Çiğköftecisi',
            style: TextStyle(
              fontSize: size.width * 0.05,
              fontWeight: FontWeight.bold,
              color: kTitleColor,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              SvgPicture.asset(
                'lib/assets/icons/location_icon.svg',
              ),
              SizedBox(width: size.width * 0.01),
              Text(
                'Selçuklu Bosna Hersek Mahallesi',
                style: TextStyle(
                  fontSize: size.width * 0.035,
                  color: kTextColor,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            width: double.infinity,
            height: size.height * 0.25,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.5),
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'lib/assets/images/adıyamancgkft.png'),
              ),
            ),
          ),
          SizedBox(height: size.height*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('lib/assets/icons/clock.svg'),
                      SizedBox(width: size.width*0.02,),
                      Text(
                        'Çalışma Saati',
                        style: TextStyle(
                          color:  Colors.grey,
                          fontSize: size.width * 0.04,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.width*0.01,),
                  Text(
                    '9:00 - 00:00',
                    style: TextStyle(
                      color:  kTitleColor,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset('lib/assets/icons/directions_black.svg'),
                  SizedBox(width: size.width*0.02,),
                  Text(
                    'Restoranta Göz At',
                    style: TextStyle(
                      color:  Colors.blueAccent,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}