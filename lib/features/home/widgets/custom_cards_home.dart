import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/cards_model.dart';

class CustomCardsHome extends StatelessWidget {
  const CustomCardsHome({super.key, required this.cardsModel});
  final CardsModel cardsModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(RadiusManager.r27_03)),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: PlurManager.s100,
              sigmaY: PlurManager.s100,
            ),
            child: Container(
              width: SizeManager.s157_66,
              height: SizeManager.s194_89,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorManager.white.withOpacity(opacityManager.o10),
                    ColorManager.white.withOpacity(opacityManager.o10),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(RadiusManager.r27_03),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(PaddingManager.p9),
          child: Column(
            children: [
              Image(
                image: AssetImage(cardsModel.image),
                width: SizeManager.s139_64,
                height: SizeManager.s139_64,
              ),
              SizedBox(height: SizeManager.s9),
              Row(
                children: [
                  Text(
                    cardsModel.title,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: FontManager.f11_71,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(width: SizeManager.s25),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.heart_fill,
                        color: cardsModel.activeColor
                            ? ColorManager.red
                            : ColorManager.grey,
                        size: SizeManager.s15,
                      ),
                      SizedBox(width: SizeManager.s2),
                      Text(
                        "${cardsModel.count}",
                        style: TextStyle(
                          color: ColorManager.countColor.withOpacity(
                            opacityManager.o60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
