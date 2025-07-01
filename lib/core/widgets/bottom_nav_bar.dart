import 'package:flutter/material.dart';
import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/ui_helpers.dart';

import '../constants/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: blackColor,
      elevation: 0,
      currentIndex: currentIndex,
      onTap: (index) {
        // final int morePageIndex = userService.isPaymentDisabled ? 2 : 3;
        // if (index == morePageIndex) {
        //   Trigger the navigation drawer to open when "More" is selected
        // Scaffold.of(context).openDrawer();
        // } else {
        // For other items, proceed with the default onTap behavior
        onTap(index);
        // }
      },
      selectedItemColor: orangeButtonColor,
      unselectedItemColor: whiteColor,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(
        size: 36,
        color: orangeButtonColor,
      ),
      unselectedIconTheme: const IconThemeData(size: 30, color: Colors.white),
      selectedLabelStyle: const TextStyle(color: Colors.white),
      unselectedLabelStyle: const TextStyle(color: Colors.white),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            currentIndex == 0
                ? 'assets/nav/featured_active.png'
                : 'assets/nav/feature_inactive.png',
            width: 30,
            height: 30,
          ),
          label: 'featured',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            currentIndex == 1
                ? 'assets/nav/favorites_active.png'
                : 'assets/nav/favorites_inactive.png',
            width: 30,
            height: 30,
          ),
          label: 'favorites',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            currentIndex == 2
                ? 'assets/nav/playlist_active.png'
                : 'assets/nav/playlist_inactive.png',
            width: 30,
            height: 30,
          ),
          label: 'playlist',
        ),
        BottomNavigationBarItem(icon: const Icon(Icons.menu), label: 'more'),
      ],
    );
  }
}
