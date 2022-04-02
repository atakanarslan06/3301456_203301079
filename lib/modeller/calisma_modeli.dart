class CalismaModel {
  final String imageAsset;
  final String title;
  final String description;

  CalismaModel(
  {required this.description,
  required this.imageAsset,
  required this.title});
}
List<CalismaModel> calismamodel = <CalismaModel>[
  CalismaModel(description: 'Lezzete Doymak İçin Kayıt Ol', imageAsset: 'lib/assets/images/giris1.png', title: 'Hoşgeldiniz'
  ),
CalismaModel(description: 'Birbirinden Güzel Lezzetler', imageAsset: 'lib/assets/images/giris2.png', title: 'Favori Yemeğini Seç'
),
CalismaModel(description: 'Yiyos', imageAsset: 'lib/assets/images/giris3.png', title: 'Dilediğin Kadar Ye'
),
];