import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_buttons_stats_page.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_container_table_row.dart';
import 'package:mini_nft_marketplace/features/stats/widgets/custom_sub_title_state.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: SizeManager.s20),

          CustomSubTitleState(),

          SizedBox(height: SizeManager.s30),

          CustomButtonsStatsPage(),

          SizedBox(height: SizeManager.s27_3),

          CustomContainerTableRow(),
        ],
      ),
    );
  }
}
