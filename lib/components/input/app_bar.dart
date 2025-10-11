import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import "package:go_router/go_router.dart";

class CustomAppBar extends StatelessWidget {
  final String label;
  final Widget icon;
  const CustomAppBar({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              context.go('/dashboard');
            },
            style: IconButton.styleFrom(
                backgroundColor:
                    isDarkMode ? AppColors.black : AppColors.offWhite,
                fixedSize: Size(45, 45)),
            icon: Icon(
              Icons.arrow_back_ios,
              color: isDarkMode ? AppColors.white : AppColors.black,
              size: 24,
            )),
        Text(label,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
        IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
                backgroundColor:
                    isDarkMode ? AppColors.black : AppColors.offWhite,
                fixedSize: Size(50, 50)),
            icon: icon)
      ],
    );
  }
}
