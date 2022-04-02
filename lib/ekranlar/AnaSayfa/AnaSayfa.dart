import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:neww/widgets/UstAnaSayfaWidget.dart';
import '../../widgets/AfisWidget.dart';
import '../../widgets/RezervasyonWidget.dart';
import '../../widgets/HepsiniGor.dart';
import '../../widgets/YatayListeWidget.dart';


class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          UstAnaSayfaWidget(size: size),
          Expanded(
            child: SizedBox(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    AfisWidget(size: size),
                    HepsiniGorWidget(
                      iconColor: const Color(0xff6B7280),
                      seeAllColor: const Color(0xff6B7280),
                      size: size,
                      title: 'Bugünün En Sevilenleri',
                      subTitle: 'Lezzete doymak için göz at',
                    ),
                    YatayListWidget(size: size),
                    HepsiniGorWidget(
                      iconColor: const Color(0xff6B7280),
                      seeAllColor: const Color(0xff6B7280),
                      size: size,
                      title: 'Popüler Restorantlar',
                      subTitle: 'En sevilen lezzetler',
                    ),
                    RezList(
                      vertical: size.height * 0.03,
                      size: size,
                      buttonTitle: 'Git',
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
