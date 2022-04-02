import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neww/ekranlar/kay%C4%B1tol/kayitol.dart';
import 'package:neww/modeller/calisma_modeli.dart';
import 'package:neww/veri/renkler.dart';
import 'package:neww/widgets/baslik.dart';
import 'package:neww/widgets/hakkinda.dart';

class KayitOl extends StatefulWidget {
  const KayitOl({Key? key}) : super(key: key);

  @override
  State<KayitOl> createState() => _KayitOlState();
}

PageController _pageController = PageController();
int selectedPage = 0;

yeniSayfa() {
  _pageController.nextPage(
      duration: Duration(milliseconds: 200), curve: Curves.ease);
}

jumpPage() {
  _pageController.jumpToPage(2);
}

class _KayitOlState extends State<KayitOl> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    selectedPage = value;
                  });
                },
                itemCount: calismamodel.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: size.height * 0.4,
                            child: Image.asset(
                              calismamodel[index].imageAsset,
                              width: size.width * 0.7,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: BaslikWidget(
                              size: size,
                              index: index,
                              name: calismamodel[index].title,
                            ),
                          ),
                          Hakkinda(
                            size: size,
                            index: index,
                            hakkinda: calismamodel[index].description,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.height * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        jumpPage();
                      },
                      child: Text(
                        'Geç',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.width * 0.04,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        calismamodel.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selectedPage == index
                                ? kIconColor
                                : kTextColor.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (selectedPage == calismamodel.length - 1) {
                          Navigator.push
                            (context, MaterialPageRoute
                            (builder: (context) => const kayitol(),
                          ));
                        } else {
                          yeniSayfa();
                        }
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: kIconColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

