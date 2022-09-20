import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/Colors.dart';
import 'package:steam_reborn/class/GameCardData.dart';
import 'package:steam_reborn/components/MostPlayedGameCard.dart';
import 'package:steam_reborn/components/NavbarDrawerWidget.dart';
import 'package:steam_reborn/screens/GameCardDetail.dart';
import 'package:steam_reborn/screens/home.dart';

class MostPlayedGames extends StatelessWidget {
  String accountName;
  List<GameCardData> mostPlayedGameCardData = [
    const GameCardData(urlImage: "dota2.jpg", gameName: "Dota2", price: "Free" , gameDescription: "Dota 2 is a 2013 multiplayer online battle arena video game developed and published by Valve. The game is a sequel to Defense of the Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III: Reign of Chaos."),
    const GameCardData(urlImage: "monsterHunter.jpg", gameName: "Monster Hunter", price: "\$100" , gameDescription: "Monster Hunter is a Japanese media franchise centered around a series of fantasy-themed action role-playing video games that started with the game Monster Hunter for PlayStation 2, released in 2004."),
    const GameCardData(urlImage: "skyrim.jpg", gameName: "Skyrim", price: "\$120" , gameDescription: "The Elder Scrolls V: Skyrim is an action role-playing video game developed by Bethesda Game Studios and published by Bethesda Softworks. "),
    const GameCardData(urlImage: "elderRing.jpg", gameName: "Elden Ring", price: "\$150" , gameDescription: "Elden Ring is a 2022 action role-playing game developed by FromSoftware and published by Bandai Namco Entertainment. It was directed by Hidetaka Miyazaki with worldbuilding provided by the fantasy writer George R. R. Martin"),
    const GameCardData(urlImage: "Pathway.jpg", gameName: "Pathway", price: "\$30" , gameDescription: "Explore the strange unknown with Pathway, a strategy adventure set in the 1930s great wilderness. Unravel long-forgotten mysteries of the occult, raid ancient tombs and outwit your foes in turn-based squad combat!"),
    const GameCardData(urlImage: "cyberPunk2077.jpg", gameName: "Cyberpunk 2022", price: "\$170" , gameDescription: "Cyberpunk 2077 is an action role-playing video game developed by CD Projekt Red and published by CD Projekt. The story takes place in Night City, an open world set in the Cyberpunk universe"),
    const GameCardData(urlImage: "stray.jpg", gameName: "Stray", price: "\$110" , gameDescription: "Stray is a 2022 adventure video game developed by BlueTwelve Studio and published by Annapurna Interactive. The story follows a stray cat who falls into a walled city populated by robots, machines, and mutant bacteria, and sets out to return to the surface with the help of a drone companion called B-12."),
  ];

  MostPlayedGames({super.key, required this.accountName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavbarDrawerWidget(accountName: accountName),
        appBar: AppBar(
          title: const Text('Most Played games'),
          centerTitle: true,
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
          itemCount: mostPlayedGameCardData.length,
          itemBuilder: (((context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GameCardDetail(accountName: accountName,gameCardData:  mostPlayedGameCardData[index],);
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: secondaryColor))),
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
                                    style: TextStyle(
                                        color: buttonColor, fontSize: 18),
                                    mostPlayedGameCardData[index].price),
                                Row(
                                  children: [],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ));
          })),
        ));
  }
}
