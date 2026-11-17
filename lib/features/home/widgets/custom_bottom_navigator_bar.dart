import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar({
    super.key,
    required this.onPressedHome,
    required this.onPressedStats,
  });

  final VoidCallback onPressedHome;
  final VoidCallback onPressedStats;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: PlurManager.s50,
              sigmaY: PlurManager.s50,
            ),
            child: Container(
              // width:   ,
              height: SizeManager.s90_09,
              color: ColorManager.white.withOpacity(opacityManager.o10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: onPressedHome,
                    icon: Icon(Icons.home, size: SizeManager.s35),
                  ),
                  IconButton(
                    onPressed: onPressedStats,
                    icon: Icon(Icons.bar_chart, size: SizeManager.s35),
                  ),

                  SizedBox(width: SizeManager.s35),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, size: SizeManager.s35),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, size: SizeManager.s35),
                  ),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          top: -SizeManager.s35,
          child: Container(
            width: SizeManager.s70_27,
            height: SizeManager.s70_27,

            decoration: ShapeDecoration(
              color: ColorManager.white.withOpacity(opacityManager.o50),
              shape: StarBorder.polygon(
                sides: SizeManager.s6,
                pointRounding: SizeManager.s0_3,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: SizeManager.s40,
                color: ColorManager.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
