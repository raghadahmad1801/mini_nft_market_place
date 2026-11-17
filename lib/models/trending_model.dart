class TrendingModel {
  final String image;
  final String title;
  final String subTitle;
  final int count;
  final bool activeColor;
  final double price;

  TrendingModel({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.activeColor,
    required this.count,
    required this.price,
  });
}
