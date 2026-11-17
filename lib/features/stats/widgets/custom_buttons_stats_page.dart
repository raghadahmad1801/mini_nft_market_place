import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_button.dart';

class CustomButtonsStatsPage extends StatelessWidget {
  const CustomButtonsStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p14_4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            title: StringManager.titlebutton1,
            icon: Icon(Icons.grid_view, size: SizeManager.s15),
          ),

          SizedBox(width: SizeManager.s40),

          CustomButton(
            title: StringManager.titlebutton2,
            icon: Icon(Icons.link, size: SizeManager.s15),
          ),
        ],
      ),
    );
  }
}
