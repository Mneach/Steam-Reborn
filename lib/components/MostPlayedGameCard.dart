import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/class/GameCardData.dart';

class MostPlayedGameCard extends StatelessWidget {

  GameCardData gameCardData = GameCardData(urlImage: "", gameName: "", price: "" , gameDescription: "");
  MostPlayedGameCard({super.key, required this.gameCardData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
        width: 150,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.asset(gameCardData.urlImage , fit: BoxFit.cover,)
              )
            ),
            const SizedBox(height: 4),
            Column(
              children: [
                Text(
                  style : const TextStyle(color: Colors.white , fontSize: 16),
                  gameCardData.gameName
                ),
                Text(
                  style : const TextStyle(color: buttonColor , fontSize: 16),
                  gameCardData.price
                ),
              ],
            )
          ],
        ));
  }
}
