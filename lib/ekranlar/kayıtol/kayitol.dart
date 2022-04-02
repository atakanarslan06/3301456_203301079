import 'package:flutter/material.dart';
import 'package:neww/veri/renkler.dart';
import 'package:neww/widgets/AltSayfa.dart';
import 'package:neww/widgets/button.dart';

class kayitol extends StatelessWidget {
  const kayitol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.4,
              child: Image.asset(
                'lib/assets/images/kayit.png',
                width: size.width * 0.7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              child: Text(
                'Hoşgeldin',
                style: TextStyle(
                  color: kTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.055,
                ),
              ),
            ),
            Text(
              'Farklı Lezzetler Denemek İçin Kayıt Ol',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: ButtonWidget(
                size: size,
                backgroundColor: kBirinciColor,
                onTab: () {
                  AltSayfa(
                    context: context,
                    size: size,
                  );
                },
                title: 'Kayıt Ol',
                titleColor: Colors.white,
              ),
            ),
            ButtonWidget(
              size: size,
              backgroundColor: kBirinciColor.withOpacity(.3),
              onTab: () {},
              title: 'Giriş Yap',
              titleColor: kBirinciColor,
            ),
          ],
        ),
      ),
    );
  }
}



