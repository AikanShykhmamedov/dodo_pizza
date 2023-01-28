import 'package:auto_route/auto_route.dart';
import 'package:dodo_icons/dodo_icons.dart';
import 'package:dodo_pizza/app/app_router.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationBarItems = [
      BottomNavigationBarItem(
        icon: const DodoIcon(
          icon: DodoIcons.menuInactive,
          size: 30,
        ),
        activeIcon: const DodoIcon(
          icon: DodoIcons.menuActive,
          size: 30,
        ),
        label: S.of(context).menu,
      ),
      BottomNavigationBarItem(
        icon: const DodoIcon(
          icon: DodoIcons.profileInactive,
          size: 30,
        ),
        activeIcon: const DodoIcon(
          icon: DodoIcons.profileActive,
          size: 30,
        ),
        label: S.of(context).profile,
      ),
      BottomNavigationBarItem(
        icon: const DodoIcon(
          icon: DodoIcons.contactsInactive,
          size: 30,
        ),
        activeIcon: const DodoIcon(
          icon: DodoIcons.contactsActive,
          size: 30,
        ),
        label: S.of(context).contact,
      ),
      BottomNavigationBarItem(
        icon: const DodoIcon(
          icon: DodoIcons.cartInactive,
          size: 30,
        ),
        activeIcon: const DodoIcon(
          icon: DodoIcons.cartActive,
          size: 30,
        ),
        label: S.of(context).basket,
      ),
    ];

    return AutoTabsScaffold(
      routes: const [
        MenuRoute(),
        ProfileRoute(),
        ContactsRoute(),
        BasketRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          items: navigationBarItems,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}
