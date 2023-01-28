import 'package:auto_route/auto_route.dart';
import 'package:dodo_pizza/basket/basket.dart';
import 'package:dodo_pizza/contacts/contacts.dart';
import 'package:dodo_pizza/main/main.dart';
import 'package:dodo_pizza/menu/menu.dart';
import 'package:dodo_pizza/profile/profile.dart';
import 'package:dodo_pizza/region/region.dart';
import 'package:dodo_pizza/splash/splash.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      page: SplashScreen,
      initial: true,
      path: '/',
    ),
    AutoRoute<Country>(
      page: CountriesScreen,
      fullscreenDialog: true,
      path: '/countries',
    ),
    AutoRoute<Region>(
      page: CitiesScreen,
      fullscreenDialog: true,
      path: '/cities',
    ),
    AutoRoute(
      page: MainScreen,
      path: '/main',
      children: [
        AutoRoute(
          page: MenuScreen,
          path: 'menu',
        ),
        AutoRoute(
          page: ProfileScreen,
          path: 'profile',
        ),
        AutoRoute(
          page: ContactsScreen,
          path: 'contacts',
        ),
        AutoRoute(
          page: BasketScreen,
          path: 'basket',
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
