import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/class/GameCardData.dart';
import 'package:steam_reborn/class/ReviewGameData.dart';

class TabBar2GameCardContent extends StatelessWidget {
  String accountName;
  List<ReviewGameData> reviewGameData = [];
  GameCardData gameCardData =
      GameCardData(urlImage: "", gameName: "", price: "", gameDescription: "");
  TabBar2GameCardContent(
      {super.key,
      required this.gameCardData,
      required this.reviewGameData,
      required this.accountName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              gameCardData.gameName,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 30),
            child: Image.asset(
              gameCardData.urlImage,
              width: 260,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: const Text(
              "Review",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: reviewGameData.length,
                itemBuilder: (((context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, right: 10),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: buttonColor, //New
                                blurRadius: 5,
                              )
                            ],
                          ),
                          child: Image.asset(
                            reviewGameData[index].urlImage,
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  reviewGameData[index].accountName,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  reviewGameData[index].comment,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }))),
          ),
        ],
      ),
    );
  }
}
