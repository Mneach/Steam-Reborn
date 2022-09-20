import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/Colors.dart';
import 'package:steam_reborn/components/MostPlayedGameShow.dart';
import 'package:steam_reborn/components/MostPopularGameShow.dart';
import 'package:steam_reborn/components/NavbarDrawerWidget.dart';
import 'package:steam_reborn/components/PromoCarousel.dart';

class HomePage extends StatelessWidget {
  String accountName;
  HomePage({super.key, required this.accountName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavbarDrawerWidget(
        accountName: accountName,
      ),
      appBar: AppBar(
        title: const Text("STEAM REBORN"),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          // PromosCarousel
          PromoCarousel(),
          const SizedBox(width: 20),
          MostPlayedGameShow(),
          MostPopularGameShow()
          // Most Played Game
          // Most Popular Game
        ],
      ),
    );
  }
}
