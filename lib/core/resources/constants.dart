import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/models/cards_model.dart';
import 'package:mini_nft_marketplace/models/categry_model.dart';
import 'package:mini_nft_marketplace/models/table_model.dart';
import 'package:mini_nft_marketplace/models/trending_model.dart';

class Constants {
  static List<CategryModel> categoryList = [
    CategryModel(title: "Art", image: AssetImageManager.categoryImage1),
    CategryModel(
      title: "Virtual Worlds",
      image: AssetImageManager.categoryImage2,
    ),
    CategryModel(title: "Music", image: AssetImageManager.categoryImage3),
  ];

  static List<CardsModel> cardsList = [
    CardsModel(
      title: "Portrait Art",
      image: AssetImageManager.cardImage1,
      count: 200,
      activeColor: true,
    ),
    CardsModel(
      title: "Abstract Art",
      image: AssetImageManager.cardImage2,
      count: 200,
      activeColor: false,
    ),
    CardsModel(
      title: "Portrait Art",
      image: AssetImageManager.cardImage3,
      count: 200,
      activeColor: true,
    ),
  ];

  static List<TrendingModel> trendingList = [
    TrendingModel(
      title: "Wave",
      subTitle: "wavepi #5267",
      image: AssetImageManager.trendingImage1,
      activeColor: true,
      count: 1000,
      price: 0.018,
    ),

    TrendingModel(
      title: "Wave",
      subTitle: "wav2 #5672",
      image: AssetImageManager.trendingImage2,
      activeColor: true,
      count: 1000,
      price: 0.26,
    ),

    TrendingModel(
      title: "Music",
      subTitle: "mali #7890",
      image: AssetImageManager.trendingImage3,
      activeColor: true,
      count: 1000,
      price: 0.46,
    ),
  ];

  static List<TableModel> tablelist = [
    TableModel(
      title: "Azumi",
      percent: -33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "Hape prime",
      percent: 33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "Cryoto",
      percent: -33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "Ape Club",
      percent: 33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "Bat",
      percent: 33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "Mutant",
      percent: 33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "Metaverse",
      percent: 33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "Mountain",
      percent: 33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "The Sandbox",
      percent: 33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),

    TableModel(
      title: "Mutant Ape",
      percent: 33.79,
      price: 180055.45,
      image: "assets/images/img2.png",
    ),
  ];
}
