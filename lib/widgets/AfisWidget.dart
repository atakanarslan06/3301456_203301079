import 'package:flutter/material.dart';
import '../modeller/AfisModel.dart';



class AfisWidget extends StatelessWidget {
  const AfisWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4.5,
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            afis.length,
                (index) => Container(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                top: size.height * 0.01,
                right: size.width * 0.01,
              ),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: size.width * 0.01,
                      top: size.height * 0.02,
                      bottom: size.height * 0.02,
                    ),
                    decoration: BoxDecoration(
                      gradient: afis[index].gradientColor,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              afis[index].topImage,
                              width: size.height * 0.05,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                bottom: 5,
                              ),
                              child: Text(
                                afis[index].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.06,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              'Şehrin en güzel burgeri\n için burdayız.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.02,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'Diğer',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                        size.width * 0.02,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: size.width * 0.02,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: size.width * 0.03),
                        SizedBox(
                          height: size.height * 0.15,
                          width: size.width * 0.4,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(35),
                      ),
                      child: Image.asset(
                        afis[index].imageBanner,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}