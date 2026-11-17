import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/categry_model.dart';

class CustomCategoryHome extends StatelessWidget {
  const CustomCategoryHome({super.key, required this.category});

  final CategryModel category;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(RadiusManager.r27_03)),
          child: Image(
            image: AssetImage(category.image),
            width: SizeManager.s252_26,
            height: SizeManager.s167_57,
          ),
        ),

        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(RadiusManager.r27_03),
              bottomRight: Radius.circular(RadiusManager.r27_03),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: PlurManager.s10,
                sigmaY: PlurManager.s10,
              ),
              child: Container(
                alignment: Alignment.center,
                width: SizeManager.s252_26,
                height: SizeManager.s54_06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(RadiusManager.r27_03),
                    bottomRight: Radius.circular(RadiusManager.r27_03),
                  ),

                  gradient: LinearGradient(
                    colors: [
                      ColorManager.black.withOpacity(opacityManager.o1),
                      ColorManager.black.withOpacity(0.0),
                    ],
                  ),
                ),
                child: Text(
                  category.title,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: FontManager.f19_82,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
