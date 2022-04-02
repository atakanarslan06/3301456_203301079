import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neww/veri/renkler.dart';

class UstAnaSayfaWidget extends StatelessWidget {
  const UstAnaSayfaWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.02,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'lib/assets/icons/Menu_icon.svg',
                width: size.width * 0.05,
              ),
              Row(
                children: [
                  SvgPicture.asset('lib/assets/icons/location_icon.svg'),
                  SizedBox(width: size.width * 0.01),
                  Text(
                    'Konya Selçuklu',
                    style: TextStyle(
                      color: kTitleColor,
                      fontSize: size.width * 0.04,
                    ),
                  )
                ],
              ),
              const CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  'lib/assets/images/atknn.png',
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            margin: EdgeInsets.only(
              left: size.width * 0.06,
              right: size.width * 0.06,
              top: size.height * 0.02,
            ),
            height: size.height * 0.05,
            decoration: BoxDecoration(
              color: const Color(0xffE6E7E9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Ara',
                hintStyle: const TextStyle(
                  color: Color(0xff9CA3AF),
                ),
                icon: SvgPicture.asset('lib/assets/icons/search_icon.svg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}