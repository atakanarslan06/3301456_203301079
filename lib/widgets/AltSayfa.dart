import 'package:flutter/material.dart';
import 'package:neww/Sayfalar/GirisYap.dart';
import 'package:neww/Sayfalar/HesapOlustur.dart';
import 'package:neww/veri/renkler.dart';

AltSayfa({context, size}) {
  showModalBottomSheet(
    isDismissible: true,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40),
      topRight: Radius.circular(40),
    )),
    elevation: 10,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return SizedBox(
        height: size.height / 1.5,
        child: DefaultTabController(
          length: 2,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          height: 10,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.5),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: TabBar(
                              indicatorColor: kBirinciColor,
                              indicatorSize: TabBarIndicatorSize.label,
                              labelStyle: TextStyle(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w700,
                              ),
                              labelColor: kBirinciColor,
                              unselectedLabelColor: Colors.grey,
                              tabs: const [
                                Tab(
                                  text: 'Hesap Oluştur',
                                ),
                                Tab(
                                  text: 'Giriş Yap',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: SizedBox(
                    child: TabBarView(
                      children: [
                        CreateAccountPage(),
                        GirisYap(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
