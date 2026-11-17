import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: SizeManager.s150,
      height: SizeManager.s39_72,
      decoration: BoxDecoration(
        color: ColorManager.white.withOpacity(opacityManager.o3),
        borderRadius: BorderRadius.circular(RadiusManager.r27_03),
        border: Border.all(
          color: ColorManager.white.withOpacity(opacityManager.o20),
          width: SizeManager.s0_6,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,

          SizedBox(width: SizeManager.s3),
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: FontManager.f13),
            ),
          ),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
