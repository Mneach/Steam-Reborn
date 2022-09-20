import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/class/GameCardData.dart';
import 'package:steam_reborn/class/ReviewGameData.dart';
import 'package:steam_reborn/components/TabBar1GameCardContent.dart';
import 'package:steam_reborn/components/TabBar2GameCardContent.dart';

class GameCardDetail extends StatelessWidget {
  GameCardData gameCardData =
      GameCardData(urlImage: "", gameName: "", price: "", gameDescription: "");
  String accountName = '';
  GameCardDetail({
    super.key,
    required this.accountName,
    required this.gameCardData,
  });

  List<String> comments = [
    "UKA NGAYAS NATAKGNA",
    "GAME INI SANGAT MANTAP",
    "WAHHHH KEREENNN!",
  ];

    List<ReviewGameData> reviewGameData = [
      ReviewGameData(urlImage: "Dummy_Avatar.jpg", accountName: "Ngab Budi", comment: "UKA NGAYAS NATAKGNA"),
      ReviewGameData(urlImage: "Dummy_Avatar.jpg", accountName: "Stevee", comment: "GAME INI SANGAT MANTAP"),
      ReviewGameData(urlImage: "Dummy_Avatar.jpg", accountName: "Baloon!", comment: "WAHHHH KEREENNN!"),
    ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Game Detail"),
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.gamepad_outlined,
                  color: buttonColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.comment_outlined,
                  color: buttonColor,
                ),
              )
            ]),
            Expanded(
                child: TabBarView(
              children: [
                TabBar1GameCardContent(
                  accountName: accountName,
                  gameCardData: gameCardData,
                  reviewGameData: reviewGameData,
                  contextParent: context,
                ),
                TabBar2GameCardContent(gameCardData: gameCardData , accountName: accountName, reviewGameData: reviewGameData ,),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
