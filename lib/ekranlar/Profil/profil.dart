import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neww/veri/renkler.dart';
import 'package:neww/widgets/UstProfilWidget.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
          ),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UstProfilWidget(size: size),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: size.height * 0.1),
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.045,
                    vertical: size.height * 0.025,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 3,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('lib/assets/icons/user_icon.svg'),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Hesap Ayarları',
                              style: TextStyle(
                                color: kTitleColor,
                                fontSize: size.width * 0.04,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset('lib/assets/icons/pencell_icon.svg'),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: size.height * 0.1),
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.045,
                    vertical: size.height * 0.025,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 3,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ProfilEsyalari(
                        size: size,
                        title: 'Dil Seçenekleri',
                        icon: 'lib/assets/icons/language_icon.svg',
                      ),
                      SizedBox(height: size.height * 0.01),
                      ProfilEsyalari(
                        size: size,
                        title: 'Geri Bildirim',
                        icon: 'lib/assets/icons/feedback_icon.svg',
                      ),
                      SizedBox(height: size.height * 0.01),
                      ProfilEsyalari(
                        size: size,
                        title: 'Bizi Değerlendirin',
                        icon: 'lib/assets/icons/rate_icon.svg',
                      ),
                      SizedBox(height: size.height * 0.01),
                      ProfilEsyalari(
                        size: size,
                        title: 'Yeni Versiyon',
                        icon: 'lib/assets/icons/newVesion_icon.svg',
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.only(
                      top: size.height*0.05,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 3,
                      )
                    ],
                      color: const Color( 0xffEB4646),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Çıkış Yap', style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width*0.04,
                    ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Row ProfilEsyalari({
    size,
    icon,
    title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(icon),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: kTitleColor,
                  fontSize: size.width * 0.045,
                ),
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: size.width * 0.03,
        ),
      ],
    );
  }
}
