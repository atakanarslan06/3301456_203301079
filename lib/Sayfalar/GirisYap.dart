import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";
import 'package:neww/ekranlar/AnaSayfa/Anasayfa_ekran%C4%B1.dart';
import 'package:neww/widgets/AltKayitGiris.dart';
import 'package:neww/widgets/formlar.dart';

class GirisYap extends StatelessWidget {
  const GirisYap({Key? key}) : super(key: key);

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormItems(
              obscureText: false,
              size: size,
              hintText: 'lezzetliyemekler@hotmail.com',
              title: 'Email Adresi',
              padding: const EdgeInsets.only(
                top: 20,
              ),
            ),
            FormItems(
              obscureText: true,
              size: size,
              hintText: '**** **** ****',
              title: 'Şifre',
              padding: const EdgeInsets.only(
                top: 15,
              ),
            ),
            AltSayfaKayitGiris(
              size: size,
              titleButtom: 'Giriş Yap',
              onTab: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnasayfaEkran(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
