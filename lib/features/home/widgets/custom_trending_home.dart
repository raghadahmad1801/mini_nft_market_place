import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/trending_model.dart';

class CustomTrendingHome extends StatelessWidget {
  const CustomTrendingHome({super.key, required this.trendingModel});

  final TrendingModel trendingModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              height: SizeManager.s236_04,

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(trendingModel.image),
                width: SizeManager.s139_64,
                height: SizeManager.s139_64,
              ),
              SizedBox(height: SizeManager.s9),

              Text(
                trendingModel.title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: FontManager.f11_71,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Text(
                trendingModel.subTitle,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: FontManager.f10_81,
                    color: ColorManager.grey,
                  ),
                ),
              ),

              SizedBox(height: SizeManager.s10),

              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.monetization_on, size: SizeManager.s10),
                      SizedBox(width: SizeManager.s5),
                      Text(
                        "${trendingModel.price}",
                        style: TextStyle(color: ColorManager.white),
                      ),
                    ],
                  ),

                  SizedBox(width: SizeManager.s40),

                  Icon(
                    CupertinoIcons.heart_fill,
                    color: trendingModel.activeColor
                        ? ColorManager.red
                        : ColorManager.grey,
                    size: SizeManager.s15,
                  ),
                  SizedBox(width: SizeManager.s2),
                  Text(
                    "${trendingModel.count}",
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
        ),
      ],
    );
  }
}
