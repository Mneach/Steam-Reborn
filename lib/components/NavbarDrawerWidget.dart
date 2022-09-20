import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/Colors.dart';
import 'package:steam_reborn/components/NavbarHeader.dart';
import 'package:steam_reborn/components/NavbarList.dart';
import 'package:steam_reborn/components/NavbarSearch.dart';
import 'package:steam_reborn/screens/login.dart';
import 'package:steam_reborn/utilities/Function/NavbarFunction.dart';

class NavbarDrawerWidget extends StatelessWidget {
  String accountName;
  // final padding = const EdgeInsets.symmetric(horizontal: 15);
  NavbarDrawerWidget({super.key, required this.accountName});

  final dummyAvatarUrl = 'Dummy_Avatar.jpg';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: primaryColor,
        child: ListView(
          children: [
            NavbarHeader(
              urlImage: dummyAvatarUrl,
              accountName: accountName,
              onTapFunction: () {},
            ),
            const SizedBox(height: 12),
            Divider(color: Colors.white70),
            const SizedBox(height: 12),
            Container(
              // padding: padding,
              child: Column(
                children: [
                  NavbarSearch(),
                  const SizedBox(height: 12),
                  NavbarList(
                      icon: Icons.home_outlined,
                      title: "Home",
                      onTapFunction: () =>
                          selectedMenuItem(context, 0, accountName)),
                  NavbarList(
                      icon: Icons.gamepad_outlined,
                      title: "Most Played Game",
                      onTapFunction: () =>
                          selectedMenuItem(context, 1, accountName)),
                  NavbarList(
                      icon: Icons.tips_and_updates_outlined,
                      title: "Most Popular Game",
                      onTapFunction: () =>
                          selectedMenuItem(context, 2, accountName)),
                  NavbarList(
                      icon: Icons.exit_to_app_outlined,
                      title: "Logout",
                      onTapFunction: () =>
                          selectedMenuItem(context, 3, accountName))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
