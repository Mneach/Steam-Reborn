import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steam_reborn/screens/home.dart';
import 'package:steam_reborn/screens/login.dart';
import 'package:steam_reborn/screens/most_played_game.dart';
import 'package:steam_reborn/screens/most_popular_game.dart';

void selectedMenuItem(BuildContext context, int itemIndex, String accountName) {
  Navigator.of(context).pop();

  switch (itemIndex) {
    case 0:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage(accountName: accountName);
      }));
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: ((context) {
        return HomePage(accountName: accountName);
      })), (route) => false);
      break;
    case 1:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MostPlayedGames(accountName: accountName);
      }));
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: ((context) {
        return MostPlayedGames(accountName: accountName);
      })), (route) => false);
      break;
    case 2:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MostPopularGame(accountName: accountName);
      }));
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: ((context) {
        return MostPopularGame(accountName: accountName);
      })), (route) => false);
      break;
    case 3:
      handleLogout(context);
      break;
  }
}

void handleLogout(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return const LoginPage();
  }));
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: ((context) {
    return const LoginPage();
  })), (route) => false);
}
