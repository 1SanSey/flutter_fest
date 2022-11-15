import 'package:flutter/material.dart';

abstract class Screens {
  static const main = "/";
}

class MainNavigation {
  Map<String, WidgetBuilder> get routes =>
      <String, WidgetBuilder>{Screens.main: (_) => const Text('Flutter Fest')};
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return null;
  }
}
