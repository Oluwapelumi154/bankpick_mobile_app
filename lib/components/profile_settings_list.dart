import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileSettingsList extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final String profileType;
  final Widget icon;
  const ProfileSettingsList(
      {super.key,
      required this.title,
      this.profileType = "default",
      required this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            children: [
              icon,
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                title,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w500,
                    color: isDarkMode ? AppColors.white : AppColors.black),
              )),
              if (profileType != "notification")
                InkResponse(
                    onTap: onTap,
                    borderRadius: BorderRadius.circular(8),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.grey,
                      size: 18,
                    ))
              else
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: AppColors.red, shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                )
            ],
          ),
          Divider(
            thickness: 0.2,
            height: 35,
            color: AppColors.grey,
          )
        ],
      ),
    );
  }
}
