enum AppRoute { start, main }

extension AppRouteExtention on AppRoute {
  String get toPath => '/$name';
}
