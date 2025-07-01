import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: whiteColor,
      elevation: 0,
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFFD19D00),
      // 🔥 Active color
      unselectedItemColor: blackColor,
      // 🔥 Inactive color

      selectedIconTheme: const IconThemeData(
        size: 28,
        color: Color(0xFFD19D00),
      ),
      unselectedIconTheme: const IconThemeData(
        size: 26,
        color: blackColor,
      ),
      selectedLabelStyle: const TextStyle(color: Color(0xFFD19D00)),
      unselectedLabelStyle: const TextStyle(color: blackColor),

      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.home.path,
            color: currentIndex == 0 ? const Color(0xFFD19D00) : blackColor,
            width: 26,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.chatBubbleLeftRight.path,
            color: currentIndex == 1 ? const Color(0xFFD19D00) : blackColor,
            width: 26,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.bookOpen.path,
            color: currentIndex == 2 ? const Color(0xFFD19D00) : blackColor,
            width: 26,
          ),
          label: 'Bible',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.user.path,
            color: currentIndex == 3 ? const Color(0xFFD19D00) : blackColor,
            width: 26,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
