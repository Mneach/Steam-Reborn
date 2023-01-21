import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/screens/login.dart';
import 'package:steam_reborn/theme/theme_provider.dart';

void main(List<String> args) {
  runApp(SteamReborn());
}

class SteamReborn extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: "Steam Reborn",
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: const LoginPage(),
          );
        },
      );
}
