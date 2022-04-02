class YatayListModel {
  final String image;
  final String title;
  final String subTitle;

  YatayListModel({
    required this.image,
    required this.subTitle,
    required this.title,
  });
}

List<YatayListModel> listyatayData = <YatayListModel>[
  YatayListModel(
    image: 'lib/assets/images/kebab.png',
    title: 'Adana Kebab',
    subTitle: 'Kebabpcı Ali Usta',
  ),
  YatayListModel(
    image: 'lib/assets/images/waffle.png',
    title: 'Klasik Waffle',
    subTitle: 'Gül Waffle',
  ),
  YatayListModel(
    image: 'lib/assets/images/burgermenu.png',
    title: 'Double Steak Burger',
    subTitle: 'Burger King',
  ),
];