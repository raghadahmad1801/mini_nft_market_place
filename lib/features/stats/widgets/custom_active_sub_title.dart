import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomActiveSubTitle extends StatelessWidget {
  const CustomActiveSubTitle({
    super.key,
    required this.title,
    required this.iconData,
    required this.active,
  });

  final String title;
  final IconData iconData;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(iconData),

            SizedBox(width: SizeManager.s3),
            Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: FontManager.f15_32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: SizeManager.s24),

        if (active)
          Container(
            height: SizeManager.s3,
            width: SizeManager.s106_31,
            decoration: BoxDecoration(
              color: ColorManager.lightPlur,
              borderRadius: BorderRadius.circular(RadiusManager.r10),
              boxShadow: [
                BoxShadow(
                  color: ColorManager.lightPlur,
                  blurRadius: RadiusManager.r18,
                  spreadRadius: RadiusManager.r0_5,
                  offset: Offset(-SizeManager.s5, 0),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
