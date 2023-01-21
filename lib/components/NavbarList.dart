import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavbarList extends StatelessWidget {
  IconData icon;
  String title;
  Color iconColor, textColor;
  // final Function()? onTapFunction;
  VoidCallback? onTapFunction;
  NavbarList({
    super.key,
    required this.icon,
    required this.title,
    required this.onTapFunction,
    required this.iconColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTapFunction,
        child: ListTile(
          leading: Icon(icon),
          title: Text(title),
          onTap: onTapFunction,
          iconColor: iconColor,
          textColor: textColor,
        ));
  }
}
