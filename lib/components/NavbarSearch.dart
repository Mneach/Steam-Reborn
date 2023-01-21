import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/theme/theme_provider.dart';

class NavbarSearch extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 15);
  const NavbarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    checkTheme() {
      if (themeProvider.isDarkMode) {
        return true;
      } else {
        return false;
      }
    }

    return Container(
      padding: padding,
      child: TextField(
        style: TextStyle(color: checkTheme() ? Colors.white : Colors.black87),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          filled: true,
          fillColor: Theme.of(context).primaryColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: fontColorDarkTheme.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: fontColorDarkTheme.withOpacity(0.7)),
          ),
          hintText: 'Search Friends',
          hintStyle:
              TextStyle(color: checkTheme() ? Colors.white : Colors.black87),
          prefixIcon: Icon(Icons.search,
              color: checkTheme() ? Colors.white : Colors.black87),
        ),
      ),
    );
  }
}
