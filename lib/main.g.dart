// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$loginRoute, $rootARoute, $rootBRoute];

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',

  factory: $LoginRouteExtension._fromState,
);

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location('/login');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $rootARoute => GoRouteData.$route(
  path: '/a',

  factory: $RootARouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: 'details',

      factory: $DetailsARouteExtension._fromState,
    ),
  ],
);

extension $RootARouteExtension on RootARoute {
  static RootARoute _fromState(GoRouterState state) => const RootARoute();

  String get location => GoRouteData.$location('/a');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsARouteExtension on DetailsARoute {
  static DetailsARoute _fromState(GoRouterState state) => const DetailsARoute();

  String get location => GoRouteData.$location('/a/details');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $rootBRoute => GoRouteData.$route(
  path: '/b',

  factory: $RootBRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: 'details',

      factory: $DetailsBRouteExtension._fromState,
    ),
  ],
);

extension $RootBRouteExtension on RootBRoute {
  static RootBRoute _fromState(GoRouterState state) => const RootBRoute();

  String get location => GoRouteData.$location('/b');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsBRouteExtension on DetailsBRoute {
  static DetailsBRoute _fromState(GoRouterState state) => const DetailsBRoute();

  String get location => GoRouteData.$location('/b/details');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
