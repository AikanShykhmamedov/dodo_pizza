// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    CountriesRoute.name: (routeData) {
      final args = routeData.argsAs<CountriesRouteArgs>(
          orElse: () => const CountriesRouteArgs());
      return MaterialPageX<Country>(
        routeData: routeData,
        child: CountriesScreen(
          key: args.key,
          canPop: args.canPop,
          repository: args.repository,
        ),
        fullscreenDialog: true,
      );
    },
    CitiesRoute.name: (routeData) {
      final args = routeData.argsAs<CitiesRouteArgs>();
      return MaterialPageX<Region>(
        routeData: routeData,
        child: CitiesScreen(
          key: args.key,
          country: args.country,
          city: args.city,
          repository: args.repository,
        ),
        fullscreenDialog: true,
      );
    },
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    MenuOfferRoute.name: (routeData) {
      final args = routeData.argsAs<MenuOfferRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: MenuOfferScreen(
          key: args.key,
          offerId: args.offerId,
        ),
      );
    },
    MenuRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MenuScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ContactsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ContactsScreen(),
      );
    },
    BasketRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BasketScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          CountriesRoute.name,
          path: '/countries',
        ),
        RouteConfig(
          CitiesRoute.name,
          path: '/cities',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main',
          children: [
            RouteConfig(
              MenuRoute.name,
              path: 'menu',
              parent: MainRoute.name,
            ),
            RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: MainRoute.name,
            ),
            RouteConfig(
              ContactsRoute.name,
              path: 'contacts',
              parent: MainRoute.name,
            ),
            RouteConfig(
              BasketRoute.name,
              path: 'basket',
              parent: MainRoute.name,
            ),
          ],
        ),
        RouteConfig(
          MenuOfferRoute.name,
          path: '/main/menu/offer',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [CountriesScreen]
class CountriesRoute extends PageRouteInfo<CountriesRouteArgs> {
  CountriesRoute({
    Key? key,
    bool canPop = true,
    RegionRepository repository = const RegionRepository(),
  }) : super(
          CountriesRoute.name,
          path: '/countries',
          args: CountriesRouteArgs(
            key: key,
            canPop: canPop,
            repository: repository,
          ),
        );

  static const String name = 'CountriesRoute';
}

class CountriesRouteArgs {
  const CountriesRouteArgs({
    this.key,
    this.canPop = true,
    this.repository = const RegionRepository(),
  });

  final Key? key;

  final bool canPop;

  final RegionRepository repository;

  @override
  String toString() {
    return 'CountriesRouteArgs{key: $key, canPop: $canPop, repository: $repository}';
  }
}

/// generated route for
/// [CitiesScreen]
class CitiesRoute extends PageRouteInfo<CitiesRouteArgs> {
  CitiesRoute({
    Key? key,
    required Country country,
    required City? city,
    RegionRepository repository = const RegionRepository(),
  }) : super(
          CitiesRoute.name,
          path: '/cities',
          args: CitiesRouteArgs(
            key: key,
            country: country,
            city: city,
            repository: repository,
          ),
        );

  static const String name = 'CitiesRoute';
}

class CitiesRouteArgs {
  const CitiesRouteArgs({
    this.key,
    required this.country,
    required this.city,
    this.repository = const RegionRepository(),
  });

  final Key? key;

  final Country country;

  final City? city;

  final RegionRepository repository;

  @override
  String toString() {
    return 'CitiesRouteArgs{key: $key, country: $country, city: $city, repository: $repository}';
  }
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [MenuOfferScreen]
class MenuOfferRoute extends PageRouteInfo<MenuOfferRouteArgs> {
  MenuOfferRoute({
    Key? key,
    required String offerId,
  }) : super(
          MenuOfferRoute.name,
          path: '/main/menu/offer',
          args: MenuOfferRouteArgs(
            key: key,
            offerId: offerId,
          ),
        );

  static const String name = 'MenuOfferRoute';
}

class MenuOfferRouteArgs {
  const MenuOfferRouteArgs({
    this.key,
    required this.offerId,
  });

  final Key? key;

  final String offerId;

  @override
  String toString() {
    return 'MenuOfferRouteArgs{key: $key, offerId: $offerId}';
  }
}

/// generated route for
/// [MenuScreen]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute()
      : super(
          MenuRoute.name,
          path: 'menu',
        );

  static const String name = 'MenuRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [ContactsScreen]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute()
      : super(
          ContactsRoute.name,
          path: 'contacts',
        );

  static const String name = 'ContactsRoute';
}

/// generated route for
/// [BasketScreen]
class BasketRoute extends PageRouteInfo<void> {
  const BasketRoute()
      : super(
          BasketRoute.name,
          path: 'basket',
        );

  static const String name = 'BasketRoute';
}
