// ignore_for_file: file_names
import 'package:flutter/material.dart' show BorderRadius, BoxDecoration, BoxShadow, BuildContext, Colors, Container, InkWell, Key, MainAxisAlignment, MediaQuery, Radius, Row, SafeArea, Scaffold, State, StatefulWidget, Widget;
import 'package:flutter_svg/svg.dart';
import 'package:neww/ekranlar/AnaSayfa/AnaSayfa.dart';
import 'package:neww/ekranlar/Bilgi/bilgi.dart';
import 'package:neww/ekranlar/Profil/profil.dart';
import 'package:neww/veri/renkler.dart';
class AnasayfaEkran extends StatefulWidget {
  const AnasayfaEkran({Key? key}) : super(key: key);

  @override
  State<AnasayfaEkran> createState() => _AnasayfaEkranState();
}

class _AnasayfaEkranState extends State<AnasayfaEkran> {
  int selectedIndex = 0;

  List bottomNavigationBarIcons = [
    'lib/assets/icons/Home_icon.svg',
    'lib/assets/icons/Booking_icon.svg',
    'lib/assets/icons/Profile_icon.svg',
  ];

  List childrenBody = [
    const AnaSayfa(),
    const Bilgi(),
    const Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: Container(
          height: size.height * 0.08,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 3,
              )
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomNavigationBarIcons.length,
                  (index) => InkWell(
                onTap: () {
                  setState(() => selectedIndex = index);
                },
                child: SvgPicture.asset(
                  //alt barın iconlarının seçili olup olmamasına bağlı renk kodu.
                  //seçili index index'e eşit ise kBirinciColor u çağır değilse Colors.grey i çağır.
                  bottomNavigationBarIcons[index],
                  color: selectedIndex == index
                      ? kBirinciColor
                      : Colors.grey,
                ),
              ),
            ),
          ),
        ),
        body: childrenBody[selectedIndex],
      ),
    );
  }
}
