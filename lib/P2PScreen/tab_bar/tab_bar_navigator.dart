import 'package:flutter/material.dart';

class TabBarNavigator {
  NavigatorState nav;
  TabBarNavigator({required BuildContext context}) : nav = Navigator.of(context);

  void openPage({required String routeName}) {
    nav.pushNamed(routeName);
  }
}
