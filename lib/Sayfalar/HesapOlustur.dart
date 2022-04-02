import 'package:flutter/material.dart';
import 'package:neww/widgets/formlar.dart';
import 'package:neww/widgets/AltKayitGiris.dart';


class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

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
              hintText: 'Kullanıcı Adını Giriniz',
              title: 'Kullanıcı Adı',
              padding: const EdgeInsets.only(
                top: 20,
              ),
            ),
            FormItems(
              obscureText: false,
              size: size,
              hintText: 'lezzetliyemek@hotmail.com',
              title: 'Email Adresi',
              padding: const EdgeInsets.only(
                top: 15,
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
              titleButtom: 'Kayıt Ol',
            ),
          ],
        ),
      ),
    );
  }
}



