import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:food_app_2/Screen/splashscreen.dart';
import 'package:food_app_2/Screen/wlecome_screen.dart';

import 'nav_observer.dart';


const String landingRoute = "/landingRoute";
const String route = "/";
const String welcome = "/welcome";



Route<Object?>? generateRoute(RouteSettings settings) {
  return getRoute(settings.name);
}

Route<Object?>? getRoute(String? name, {LinkedHashMap? args}) {
  switch (name) {
    case route:
      return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: RouteSettings(name: name));
    case welcome:
      return MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
          settings: RouteSettings(name: name));

  }
  return null;
}

openScreen(String routeName,
    {bool forceNew = false,
    bool requiresAsInitial = false,
    LinkedHashMap? args}) {
  var route = getRoute(routeName, args: args);
  var context = NavObserver.navKey.currentContext;
  if (route != null && context != null) {
    if (requiresAsInitial) {
      Navigator.pushAndRemoveUntil(context, route, (route) => false);
    } else if (forceNew || !NavObserver.instance.containsRoute(route)) {
      Navigator.push(context, route);
    } else {
      Navigator.popUntil(context, (route) {
        if (route.settings.name == routeName) {
          if (args != null) {
            (route.settings.arguments as Map)["result"] = args;
          }
          return true;
        }
        return false;
      });
    }
  }
}

back(LinkedHashMap? args) {
  if (NavObserver.navKey.currentContext != null) {
    Navigator.pop(NavObserver.navKey.currentContext!, args);
  }
}
