import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SettingList extends StatelessWidget {
  final String title;
  final String label;
  final VoidCallback onPressed;
  const SettingList(
      {super.key,
      required this.title,
      required this.label,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: isDarkMode ? AppColors.white : AppColors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              InkWell(
                onTap: onPressed,
                borderRadius: BorderRadius.circular(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (label.isNotEmpty)
                      Text(
                        label,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                color: AppColors.grey,
                                fontSize: 16.5,
                                fontWeight: FontWeight.w300),
                      ),
                    const SizedBox(width: 4),
                    Icon(Icons.arrow_forward_ios,
                        color: AppColors.grey, size: 16),
                  ],
                ),
              ),
            ],
          ),
          Divider(height: 30, thickness: 0.2, color: AppColors.grey),
        ],
      ),
    );
  }
}
