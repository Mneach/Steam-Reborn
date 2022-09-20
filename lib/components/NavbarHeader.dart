import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/Colors.dart';

class NavbarHeader extends StatelessWidget {
  final dummyAvatarUrl = 'Dummy_Avatar.jpg';
  String urlImage;
  String accountName;
  VoidCallback onTapFunction;
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  NavbarHeader(
      {super.key,
      required this.urlImage,
      required this.accountName,
      required this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding.add(EdgeInsets.only(top: 15)),
        child: Column(
          children: [
            Row(children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: buttonColor, //New
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Container(
                  child: Image.asset('Dummy_Avatar.jpg', width: 50, height: 50),
                ),
              ),
              // const CircleAvatar(
              //     radius: 30,
              //     backgroundImage: AssetImage('assets/Dummy_Avatar.jpg')),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    accountName,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Image.asset('indonesia-flag.png' , width: 20 , height: 20),
                      const SizedBox(width: 5),
                      const Text(
                        "Indonesia",
                        style: TextStyle(fontSize: 12, color: buttonColor),
                      ),
                    ],
                  ),
                  const Text(
                    "No Information Given",
                    style: TextStyle(fontSize: 12, color: fontColor),
                  )
                ],
              )
            ]),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "LEVEL 999",
                  style: TextStyle(fontSize: 16 , color: Colors.white70),
                )
              ],
            )
          ],
        ));
  }
}
