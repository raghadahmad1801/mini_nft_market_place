import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/home/screens/home_screen.dart';
import 'package:mini_nft_marketplace/features/on_boarding/screens/on_boarding_page.dart';
import 'package:mini_nft_marketplace/features/stats/screens/stats_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: "OnBoardingPage",
      routes: {
        "OnBoardingPage": (context) => OnBoardingPage(),
        "HomeScreen": (context) => HomeScreen(),
        "statsPage": (context) => StatsPage(),
      },
    );
  }
}
