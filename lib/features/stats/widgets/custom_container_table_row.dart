import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_table_row.dart';

class CustomContainerTableRow extends StatelessWidget {
  const CustomContainerTableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: SizeManager.s14,
        vertical: PaddingManager.p10,
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: PlurManager.s10,
            sigmaY: PlurManager.s10,
          ),
          child: Container(
            height: SizeManager.s720,
            width: double.infinity,

            padding: EdgeInsets.symmetric(vertical: PaddingManager.p20),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  ColorManager.onBorderColor.withOpacity(opacityManager.o8),
                  ColorManager.white.withOpacity(opacityManager.o5),
                ],
              ),

              borderRadius: BorderRadius.circular(RadiusManager.r27_03),
              border: Border.all(
                color: ColorManager.white.withOpacity(opacityManager.o40),
                width: SizeManager.s0_7,
              ),
            ),
            child: SizedBox(
              height: SizeManager.s40,
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Constants.tablelist.length,
                itemBuilder: (context, index) => CustomTableRow(
                  i: index + 1,
                  tableModel: Constants.tablelist[index],
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(height: SizeManager.s8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
