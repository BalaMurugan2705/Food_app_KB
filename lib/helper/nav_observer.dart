import 'package:flutter/material.dart';

class NavObserver extends NavigatorObserver {
  List<Route?> routeHistory = [];

  static NavObserver instance = NavObserver();
  static var navKey = GlobalKey<NavigatorState>();

  @override
  void didPush(Route route, Route? previousRoute) {
    if(route.settings.name!=null&&route.settings.name!.isNotEmpty) {
      routeHistory.add(route);
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    routeHistory.remove(route);
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    var beginIndex = routeHistory.indexOf(route);
    var endIndex = routeHistory.indexOf(previousRoute);
    if((endIndex == -1 && beginIndex != -1) || beginIndex - 1 == endIndex) {
      routeHistory.remove(route);
    } else if( endIndex != -1 && beginIndex != -1) {
      routeHistory.removeRange(beginIndex, endIndex);
    }
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if(routeHistory.contains(oldRoute)) {
      routeHistory[routeHistory.indexOf(oldRoute)] = newRoute;
    }
    super.didReplace(newRoute : newRoute, oldRoute: oldRoute);
  }

  bool containsRoute(Route<dynamic>? route){
    if(route!=null) {
      for (var history in routeHistory) {
        if (history?.settings.name == route.settings.name) {
          return true;
        }
      }
    }
    return false;
  }
}