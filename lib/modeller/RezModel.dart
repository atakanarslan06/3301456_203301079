class RezervasyonListModel {
  final String title;
  final String subTitle;
  final String image;

  RezervasyonListModel(
      {required this.image, required this.subTitle, required this.title});
}

List<RezervasyonListModel> rezervasyonList = <RezervasyonListModel>[
  RezervasyonListModel(
    image: 'lib/assets/images/cigkofte.png',
    subTitle: 'Kosova Mahallesi',
    title: 'Meşhur Adıyaman\n Çiğkötecisi',
  ),
  RezervasyonListModel(
    image: 'lib/assets/images/kofteciysf.png',
    subTitle: 'Yazır Mahallesi',
    title: 'Köfteci Yusuf',
  ),
  RezervasyonListModel(
    image: 'lib/assets/images/nusret.png',
    subTitle: 'Bosna Hersek\n  Mahallesi',
    title: 'Nusret',
  ),
];