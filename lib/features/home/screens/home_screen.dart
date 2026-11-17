import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';
import 'package:mini_nft_marketplace/features/home/screens/home_page.dart';
import 'package:mini_nft_marketplace/features/home/widgets/custom_bottom_navigator_bar.dart';
import 'package:mini_nft_marketplace/features/stats/screens/stats_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

List<Widget> widgets = [HomePage(), StatsPage()];

class _MyWidgetState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      backgroundColor: ColorManager.primary,

      bottomNavigationBar: CustomBottomNavigatorBar(
        onPressedHome: () {
          setState(() {
            _currentIndex = 0;
          });
        },
        onPressedStats: () {
          setState(() {
            _currentIndex = 1;
          });
        },
      ),

      body: widgets.elementAt(_currentIndex),

      appBar: _currentIndex == 0
          ? AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                StringManager.titleHomePage,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: FontManager.f25_23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              centerTitle: true,
            )
          : AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                StringManager.titleStatsPage,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: FontManager.f25_23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              centerTitle: true,
              actionsPadding: EdgeInsets.only(right: SizeManager.s12),

              actions: [
                Container(
                  width: 21.62,
                  height: 21.62,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Icon(Icons.more_horiz_outlined, size: 20),
                ),
              ],
            ),
    );
  }
}
