import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/components/MostPlayedGameShow.dart';
import 'package:steam_reborn/components/MostPopularGameShow.dart';
import 'package:steam_reborn/components/NavbarDrawerWidget.dart';
import 'package:steam_reborn/components/PromoCarousel.dart';
import 'package:steam_reborn/theme/theme_provider.dart';

class HomePage extends StatefulWidget {
  final String accountName;
  const HomePage({super.key, required this.accountName});

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      drawer: NavbarDrawerWidget(
        accountName: widget.accountName,
      ),
      appBar: AppBar(
        title: const Text(
          "STEAM REBORN",
        ),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        actions: [
          PopupMenuButton(
            color: Theme.of(context).primaryColor,
            itemBuilder: (context) => [
              PopupMenuItem<bool>(
                value: themeProvider.isDarkMode ? false : true,
                child: checkThemeMode(themeProvider.isDarkMode) == true
                    ? Text("Light Theme")
                    : Text("Dark Theme"),
              )
            ],
            onSelected: (item) => {changeTheme(item)},
          )
        ],
      ),
      body: Column(
        children: [
          // PromosCarousel
          PromoCarousel(),
          const SizedBox(width: 20),
          MostPlayedGameShow(),
          MostPopularGameShow()
          // Most Played Game
          // Most Popular Game
        ],
      ),
    );
  }

  changeTheme(item) {
    final provider = Provider.of<ThemeProvider>(context, listen: false);
    provider.toogleTheme(item);
  }

  checkThemeMode(bool isDark) {
    if (isDark == true) {
      return true;
    } else {
      return false;
    }
  }
}
