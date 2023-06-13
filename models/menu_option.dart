import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget pages;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.pages});
}
