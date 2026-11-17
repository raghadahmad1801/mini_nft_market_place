import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(RadiusManager.r60),
              ),
              child: Image(
                image: const AssetImage(AssetImageManager.onBoardingImage),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: PaddingManager.p26_13,
                vertical: PaddingManager.p70,
              ),
              child: SizedBox(
                width: double.infinity,

                child: Column(
                  children: [
                    Text(
                      StringManager.titleOnboardingPage,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: FontManager.f36_04,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.white,
                        ),
                      ),
                    ),

                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(RadiusManager.r27_03),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: PlurManager.s30,
                          sigmaY: PlurManager.s30,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(PaddingManager.p27_03),

                          width: SizeManager.s306_31,
                          height: SizeManager.s191_02,
                          decoration: BoxDecoration(
                            color: ColorManager.white.withOpacity(
                              opacityManager.o10,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                StringManager.titleCard,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: FontManager.f19_82,
                                    fontWeight: FontWeight.bold,
                                    color: ColorManager.white,
                                  ),
                                ),
                              ),

                              Text(
                                StringManager.subTitleCard,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: FontManager.f11_71,
                                    height: SizeManager.s1_5,
                                    color: ColorManager.onSubTitleCardColor,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ),

                              Spacer(),

                              ClipRRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: PlurManager.s10,
                                    sigmaY: PlurManager.s10,
                                  ),
                                  child: Container(
                                    height: SizeManager.s45_53,
                                    width: SizeManager.s198_2,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(RadiusManager.r40),
                                      ),
                                      gradient: LinearGradient(
                                        colors: [
                                          ColorManager.onBorderColor
                                              .withOpacity(opacityManager.o50),
                                          ColorManager.black.withOpacity(
                                            opacityManager.o20,
                                          ),
                                        ],
                                      ),
                                      border: Border.all(
                                        width: SizeManager.s0_5,
                                        color: ColorManager.onBorderColor,
                                      ),
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                          context,
                                          "HomeScreen",
                                        );
                                      },
                                      child: Text(
                                        StringManager.buttonTitle,
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: FontManager.f15_32,
                                            color: ColorManager.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
