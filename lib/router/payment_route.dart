import 'package:flutter/material.dart';
import 'package:payment_card_ui/assets/constants/route_const.dart';
import 'package:payment_card_ui/view/home/home_page.dart';

class AppRoute {
  static final AppRoute _instance = AppRoute.init();
  static AppRoute get instance => _instance;
  AppRoute.init();

  Route? appRoutes(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case homePage:
        return easynavigate(HomePage());
    }
  }

  easynavigate(Widget page) => MaterialPageRoute(builder: (context) => page);
}
