import 'package:flutter/material.dart';
import 'package:test_ui/P2PScreen/tab_bar/tab_bar_page.dart';

import '../../ProductAPIData.dart';
import '../click_to_show_text/click_to_show_text_page.dart';


class AppRouteService {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Route<dynamic>? route;
    switch (settings.name) {
      case '/':
         route = MaterialPageRoute(builder: (context) => const ProductData());
      case '/TextPage':
        route = MaterialPageRoute(builder: (context) => const ClickToShowTextPage());

      default:
        throw UnimplementedError("${settings.name} route not implemented");
    }
    return route;
  }
}
