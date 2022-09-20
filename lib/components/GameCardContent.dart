import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/colors.dart';
class GameCardContent extends StatelessWidget {
  const GameCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Dota 2",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 20),
            child: Image.asset("dota2.jpg"),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 40),
            child: Text(
              textAlign: TextAlign.justify,
              "Dota 2 is a 2013 multiplayer online battle arena video game developed and published by Valve. The game is a sequel to Defense of the Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III: Reign of Chaos",
              style: TextStyle(fontSize: 18, color: fontColor),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              "Review",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Container(
            height: 100,
            // color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 20),
                    child: TextFormField(
                      // controller: passwordController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: secondaryColor,
                          border: OutlineInputBorder(),
                          labelText: 'Review',
                          hintText: 'Enter Comment',
                          labelStyle: TextStyle(color: fontColor)),
                      style: const TextStyle(color: fontColor),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: buttonColor,
                      size: 50,
                    ),
                    onTap: () {
                      print("Icon Clikced");
                    },
                  ),
                )
              ],
            ),
          )
        ],
      );
  }
}