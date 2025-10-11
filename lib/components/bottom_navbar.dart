import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:bankpick_mobile_app/utlis/onboarding.data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    final int currentIndex = bottomNavOptions.indexWhere(
      (option) => location.startsWith(option['path']!),
    );
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return BottomNavigationBar(
      backgroundColor: isDarkMode ? AppColors.black : AppColors.offWhite,
      onTap: (index) {
        final data = bottomNavOptions[index];
        context.go(data['path']!);
      },
      currentIndex: currentIndex < 0 ? 0 : currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedItemColor: AppColors.primary,
      items: bottomNavOptions.map((option) {
        return BottomNavigationBarItem(
          activeIcon: Column(
            children: [
              SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset(option['active_icon'])),
              SizedBox(
                height: 5,
              )
            ],
          ),
          icon: Column(
            children: [
              SizedBox(
                  height: 20, width: 20, child: Image.asset(option['icon'])),
              SizedBox(
                height: 5,
              )
            ],
          ),
          label: option['label'],
        );
      }).toList(),
    );
  }
}
