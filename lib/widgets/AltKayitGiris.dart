import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neww/veri/renkler.dart';
import 'button.dart';

class AltSayfaKayitGiris extends StatelessWidget {
  const AltSayfaKayitGiris({
    Key? key,
    required this.size,
    required this.titleButtom, this.onTab,
  }) : super(key: key);

  final Size size;
  final String titleButtom;
  final onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(children: [
        ButtonWidget(
          size: size,
          backgroundColor: kBirinciColor,
          title: titleButtom,
          titleColor: Colors.white,
          onTab: onTab,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.25),
          child: const Divider(
            color: Colors.grey,
            height: 5,
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.1,
            vertical: size.height * 0.01,
          ),
          height: size.height * 0.06,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('lib/assets/icons/iconGoogle.svg'),
              SizedBox(width: size.width * 0.05),
              Text(
                'Google İle Giris Yap',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: size.width * 0.038,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}