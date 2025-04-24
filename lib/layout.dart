import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'models/destination.dart';

class LayoutShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const LayoutShell({super.key, required this.navigationShell});

  final List<Destination> destinations = const [
    Destination(
      label: 'Home',
      icon: Icons.home,
      selectedIcon: Icon(Icons.home_filled),
    ),
    Destination(
      label: 'Explore',
      icon: Icons.explore_outlined,
      selectedIcon: Icon(Icons.explore),
    ),
    Destination(
      label: 'Settings',
      icon: Icons.settings,
      selectedIcon: Icon(Icons.settings_applications),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        destinations:
            destinations
                .map(
                  (d) => NavigationDestination(
                    icon: Icon(d.icon),
                    selectedIcon: d.selectedIcon,
                    label: d.label,
                  ),
                )
                .toList(),
      ),
    );
  }
}
