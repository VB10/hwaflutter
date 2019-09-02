class NavigationRoute {
  static const String HOME = "/home";
  static const String HOME_DETAIL = "/routedetail";

  String navRouteConverter(NavRoute route) {
    switch (route) {
      case NavRoute.HOME:
        return "/home";
      default:
    }
  }
}

enum NavRoute { HOME, DETAIL }
