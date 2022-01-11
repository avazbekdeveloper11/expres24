import 'package:express24/screens/home_page/bosh_menu/profilie/edit/editPage.dart';
import 'package:express24/screens/home_page/home_page.dart';
import 'package:express24/screens/location_page/location_page.dart';
import 'package:express24/screens/login_page/login_page.dart';
import 'package:express24/screens/search_page/search_page.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case "/location":
        return MaterialPageRoute(builder: (_) => const LocationPage());
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/search":
        return MaterialPageRoute(builder: (_) => SearchPage());
      case "/edit":
        return MaterialPageRoute(builder: (_) =>const EditPage());
    }
  }
}
