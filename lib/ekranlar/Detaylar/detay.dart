import 'package:flutter/material.dart';
import 'package:neww/veri/renkler.dart';
import 'package:neww/widgets/HepsiniGor.dart';
import 'package:neww/widgets/RezervasyonWidget.dart';
import '../../widgets/RestoranDetayWidget.dart';
import '../../widgets/UstDetay.dart';

class DetayEkran extends StatelessWidget {
  const DetayEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            UstDetay(size: size),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    RestoranDetay(size: size),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          HepsiniGorWidget(
                            size: size,
                            title: 'Diğer Restoranlar',
                            subTitle: 'Menüye Bak',
                            iconColor: kBirinciColor,
                            seeAllColor: kBirinciColor,
                          ),
                          const SizedBox(height: 20),
                          const Divider(),
                          RezList(size: size, buttonTitle: 'Git', vertical: size.height*0.01,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
