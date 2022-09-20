import 'package:flutter/material.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/screens/login.dart';

void main(List<String> args) {
  runApp(const SteamReborn());
}

class SteamReborn extends StatelessWidget {
  const SteamReborn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Steam Reborn",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: primaryColor,
      ),
      home: const LoginPage(),
    );
  }
}
