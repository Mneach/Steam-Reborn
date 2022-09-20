import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/Colors.dart';
import 'package:steam_reborn/class/GameCardData.dart';
import 'package:steam_reborn/components/MostPlayedGameCard.dart';
import 'package:steam_reborn/components/NavbarDrawerWidget.dart';

class MostPopularGame extends StatelessWidget {
  String accountName;
  List<GameCardData> mostPlayedGameCardData = [
    const GameCardData(urlImage: "minecraft.jpg", gameName: "Minecraft", price: "\$100" , gameDescription: "Minecraft is a 3D sandbox game developed by Mojang Studios where players interact with a fully modifiable three-dimensional environment made of blocks and entities. Its diverse gameplay lets players choose the way they play, allowing for countless possibilities."),
    const GameCardData(urlImage: "theWitcher3.jpg", gameName: "The Witcher 3", price: "\$120" , gameDescription: "The Witcher 3: Wild Hunt is a 2015 action role-playing game developed and published by CD Projekt. It is the sequel to the 2011 game The Witcher 2: Assassins of Kings and the third game in The Witcher video game series, played in an open world with a third-person perspective."),
    const GameCardData(urlImage: "fallGuys.jpg", gameName: "Fall Guys", price: "\$170" , gameDescription: "Fall Guys is a platform battle royale game developed by Mediatonic. The game involves up to 60 players who control jellybean-like creatures and compete against each other in a series of randomly selected mini-games, such as obstacle courses or tag."),
    const GameCardData(urlImage: "elderRing.jpg", gameName: "Elden Ring", price: "\$150" , gameDescription: "Elden Ring is a 2022 action role-playing game developed by FromSoftware and published by Bandai Namco Entertainment. It was directed by Hidetaka Miyazaki with worldbuilding provided by the fantasy writer George R. R. Martin"),
    const GameCardData(urlImage: "dota2.jpg", gameName: "Dota2", price: "Free" , gameDescription: "Dota 2 is a 2013 multiplayer online battle arena video game developed and published by Valve. The game is a sequel to Defense of the Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III: Reign of Chaos."),
    const GameCardData(urlImage: "GTA5.jpg", gameName: "GTA 5", price: "\$110" , gameDescription: "Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008's Grand Theft Auto IV, and the fifteenth instalment overall."),
    const GameCardData(urlImage: "Pathway.jpg", gameName: "Pathway", price: "\$30" , gameDescription: "Explore the strange unknown with Pathway, a strategy adventure set in the 1930s great wilderness. Unravel long-forgotten mysteries of the occult, raid ancient tombs and outwit your foes in turn-based squad combat!"),
  ];

  MostPopularGame({super.key, required this.accountName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavbarDrawerWidget(accountName: accountName),
        appBar: AppBar(
          title: const Text('Most Popular games'),
          centerTitle: true,
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
          itemCount: mostPlayedGameCardData.length,
          itemBuilder: (((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: secondaryColor))),
                height: 120,
                // color: Colors.brown,
                child: Row(
                  children: [
                    Container(
                        child: Image.asset(
                      mostPlayedGameCardData[index].urlImage,
                      width: 160,
                      height: 160,
                      fit: BoxFit.cover,
                    )),
                    Container(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                                mostPlayedGameCardData[index].gameName),
                            Text(
                                textAlign: TextAlign.start,
                                style:
                                    TextStyle(color: buttonColor, fontSize: 18),
                                mostPlayedGameCardData[index].price),
                            Row(
                              children: [],
                            )
                          ],
                        ))
                  ],
                ),
              ),
            );
          })),
        ));
  }
}
