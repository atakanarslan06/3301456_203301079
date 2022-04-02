import 'package:flutter/material.dart';
import 'package:neww/ekranlar/Detaylar/detay.dart';
import 'package:neww/widgets/RezervasyonWidget.dart';
import '../../veri/renkler.dart';

class Bilgi extends StatelessWidget {
  const Bilgi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.03,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kBirinciColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(
                    20,
                  ),
                  bottomRight: Radius.circular(
                    20,
                  )),
            ),
            child: Text(
              'Ziyaret Geçmişi',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.045,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                RezList(
                  size: size,
                  buttonTitle: 'Kontrol',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DetayEkran(),),);
                  },
                  vertical: size.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.grey, size: 30,),
                        Text('Rez Ekle',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: size.width * 0.05,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
