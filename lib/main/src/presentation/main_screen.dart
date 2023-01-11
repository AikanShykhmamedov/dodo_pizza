import 'package:dodo_icons/dodo_icons.dart';
import 'package:dodo_pizza/basket/basket.dart';
import 'package:dodo_pizza/contacts/contacts.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:dodo_pizza/profile/profile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pageController = PageController();

  final _screens = const [
    ProfileScreen(),
    ContactsScreen(),
    BasketScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pageView = PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: _screens,
    );

    final navigationBarItems = [
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

    final navigationBar = AnimatedBuilder(
      animation: _pageController,
      builder: (context, _) {
        return BottomNavigationBar(
          items: navigationBarItems,
          currentIndex: _pageController.page?.round() ?? 0,
          onTap: _onNavigationBarItemPressed,
        );
      },
    );

    return Scaffold(
      body: pageView,
      bottomNavigationBar: navigationBar,
    );
  }

  void _onNavigationBarItemPressed(int index) {
    _pageController.jumpToPage(index);
  }
}
