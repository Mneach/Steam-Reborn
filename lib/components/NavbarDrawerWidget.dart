import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/components/NavbarHeader.dart';
import 'package:steam_reborn/components/NavbarList.dart';
import 'package:steam_reborn/components/NavbarSearch.dart';
import 'package:steam_reborn/screens/login.dart';
import 'package:steam_reborn/theme/theme_provider.dart';
import 'package:steam_reborn/utilities/Function/NavbarFunction.dart';

class NavbarDrawerWidget extends StatelessWidget {
  String accountName;
  // final padding = const EdgeInsets.symmetric(horizontal: 15);
  NavbarDrawerWidget({super.key, required this.accountName});

  final dummyAvatarUrl = 'Dummy_Avatar.jpg';

  @override
  Widget build(BuildContext context) {
    // checkTheme() {
    //   if (themeProvider.isDarkMode) {
    //     return true;
    //   } else {
    //     return false;
    //   }
    // }

    return Drawer(
      child: Container(
        color: Theme.of(context).secondaryHeaderColor,
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
                      iconColor: Colors.white,
                      title: "Home",
                      textColor: Colors.white,
                      onTapFunction: () =>
                          selectedMenuItem(context, 0, accountName)),
                  NavbarList(
                      icon: Icons.gamepad_outlined,
                      iconColor: Colors.white,
                      title: "Most Played Game",
                      textColor: Colors.white,
                      onTapFunction: () =>
                          selectedMenuItem(context, 1, accountName)),
                  NavbarList(
                      icon: Icons.tips_and_updates_outlined,
                      iconColor: Colors.white,
                      title: "Most Popular Game",
                      textColor: Colors.white,
                      onTapFunction: () =>
                          selectedMenuItem(context, 2, accountName)),
                  NavbarList(
                      icon: Icons.exit_to_app_outlined,
                      iconColor: Colors.white,
                      title: "Logout",
                      textColor: Colors.white,
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
