import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/class/GameCardData.dart';
import 'package:steam_reborn/components/MostPlayedGameCard.dart';

class MostPlayedGameShow extends StatelessWidget {
  MostPlayedGameShow({super.key});

  List<GameCardData> mostPlayedGameCardData = [
    const GameCardData(
        urlImage: "dota2.jpg",
        gameName: "Dota2",
        price: "Free",
        gameDescription:
            "Dota 2 is a 2013 multiplayer online battle arena video game developed and published by Valve. The game is a sequel to Defense of the Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III: Reign of Chaos."),
    const GameCardData(
        urlImage: "monsterHunter.jpg",
        gameName: "Monster Hunter",
        price: "\$100",
        gameDescription:
            "Monster Hunter is a Japanese media franchise centered around a series of fantasy-themed action role-playing video games that started with the game Monster Hunter for PlayStation 2, released in 2004."),
    const GameCardData(
        urlImage: "skyrim.jpg",
        gameName: "Skyrim",
        price: "\$120",
        gameDescription:
            "The Elder Scrolls V: Skyrim is an action role-playing video game developed by Bethesda Game Studios and published by Bethesda Softworks. "),
    const GameCardData(
        urlImage: "elderRing.jpg",
        gameName: "Elden Ring",
        price: "\$150",
        gameDescription:
            "Elden Ring is a 2022 action role-playing game developed by FromSoftware and published by Bandai Namco Entertainment. It was directed by Hidetaka Miyazaki with worldbuilding provided by the fantasy writer George R. R. Martin"),
    const GameCardData(
        urlImage: "Pathway.jpg",
        gameName: "Pathway",
        price: "\$30",
        gameDescription:
            "Explore the strange unknown with Pathway, a strategy adventure set in the 1930s great wilderness. Unravel long-forgotten mysteries of the occult, raid ancient tombs and outwit your foes in turn-based squad combat!"),
    const GameCardData(
        urlImage: "cyberPunk2077.jpg",
        gameName: "Cyberpunk 2022",
        price: "\$170",
        gameDescription:
            "Cyberpunk 2077 is an action role-playing video game developed by CD Projekt Red and published by CD Projekt. The story takes place in Night City, an open world set in the Cyberpunk universe"),
    const GameCardData(
        urlImage: "stray.jpg",
        gameName: "Stray",
        price: "\$110",
        gameDescription:
            "Stray is a 2022 adventure video game developed by BlueTwelve Studio and published by Annapurna Interactive. The story follows a stray cat who falls into a walled city populated by robots, machines, and mutant bacteria, and sets out to return to the surface with the help of a drone companion called B-12."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Most Played Game",
                  style: Theme.of(context).textTheme.headline3,
                ),
                Spacer(),
                Text(
                  "See All",
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
          ),
          Container(
            height: 256,
            padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: mostPlayedGameCardData.length,
              separatorBuilder: (context, _) => const SizedBox(width: 20),
              itemBuilder: ((context, index) => MostPlayedGameCard(
                  gameCardData: mostPlayedGameCardData[index])),
            ),
          ),
        ],
      ),
    );
  }
}
