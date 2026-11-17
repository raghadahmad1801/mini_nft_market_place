import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_active_sub_title.dart';

class CustomSubTitleState extends StatelessWidget {
  const CustomSubTitleState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 10),
      height: SizeManager.s52_25,

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorManager.white.withOpacity(opacityManager.o20),
            width: SizeManager.s0_5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomActiveSubTitle(
            title: StringManager.subTitleStats1,
            iconData: Icons.bar_chart,
            active: false,
          ),
          SizedBox(width: SizeManager.s50),
          CustomActiveSubTitle(
            title: StringManager.subTitleStats2,
            iconData: Icons.bar_chart,
            active: true,
          ),
        ],
      ),
    );
  }
}
