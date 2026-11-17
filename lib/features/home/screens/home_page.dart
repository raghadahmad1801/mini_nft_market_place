import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_cards_home.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_category_home.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_trending_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: PaddingManager.p5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: PaddingManager.p29_5,
              ),
              child: SizedBox(
                height: SizeManager.s167_57,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: Constants.categoryList.length,

                  shrinkWrap: true,
                  separatorBuilder: (context, index) =>
                      SizedBox(width: SizeManager.s9),
                  itemBuilder: (context, index) => CustomCategoryHome(
                    category: Constants.categoryList[index],
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                StringManager.subTitleTrending,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: FontManager.f18_02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: SizeManager.s10),

            SizedBox(
              height: SizeManager.s194_89,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Constants.cardsList.length,
                itemBuilder: (context, index) =>
                    CustomCardsHome(cardsModel: Constants.cardsList[index]),
                separatorBuilder: (context, index) =>
                    SizedBox(width: SizeManager.s3),
              ),
            ),

            SizedBox(height: SizeManager.s10),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                StringManager.subTitleTop,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: FontManager.f18_02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: SizeManager.s10),

            SizedBox(
              height: 236.04,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Constants.trendingList.length,
                itemBuilder: (context, index) => CustomTrendingHome(
                  trendingModel: Constants.trendingList[index],
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(width: SizeManager.s10),
              ),
            ),

            SizedBox(height: SizeManager.s10),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                StringManager.subTitleHot,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: FontManager.f18_02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: SizeManager.s10),

            SizedBox(
              height: SizeManager.s236_04,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Constants.trendingList.length,
                itemBuilder: (context, index) => CustomTrendingHome(
                  trendingModel: Constants.trendingList[index],
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(width: SizeManager.s10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
