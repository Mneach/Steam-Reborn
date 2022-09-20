import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/colors.dart';

class NavbarSearch extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 15);
  const NavbarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextField(
        style: TextStyle(color: fontColor),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          filled: true,
          fillColor: primaryColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: fontColor.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: fontColor.withOpacity(0.7)),
          ),
          hintText: 'Search Friends',
          hintStyle: const TextStyle(color: fontColor),
          prefixIcon: Icon(Icons.search, color: Colors.white),
        ),
      ),
    );
  }
}
