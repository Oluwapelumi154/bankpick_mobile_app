import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/profile_settings_list.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: CustomAppBar(
                label: 'Profile',
                icon: Icon(
                  Icons.edit,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                  size: 27,
                )),
          ))),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(right: 18, left: 18),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor:
                      isDarkMode ? AppColors.offWhite : AppColors.black,
                ),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'AR Jonson',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Senior Designer',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontSize: 16, color: AppColors.grey),
                    )
                  ],
                ))
              ],
            ),
            SizedBox(height: 25),
            ProfileSettingsList(
                title: 'Personal Information',
                onTap: () {},
                icon: Icon(
                  Icons.person,
                  color: AppColors.grey,
                  size: 18,
                )),
            ProfileSettingsList(
                title: 'Payment Preferences',
                onTap: () {},
                icon: Icon(
                  Icons.payment_outlined,
                  color: AppColors.grey,
                  size: 18,
                )),
            ProfileSettingsList(
                title: 'Banks and Cards',
                onTap: () {},
                icon: Icon(
                  Icons.card_membership_outlined,
                  color: AppColors.grey,
                  size: 18,
                )),
            ProfileSettingsList(
                title: 'Notifications',
                profileType: "notification",
                onTap: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                  color: AppColors.grey,
                  size: 18,
                )),
            ProfileSettingsList(
                title: 'Message Center',
                onTap: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: AppColors.grey,
                  size: 18,
                )),
            ProfileSettingsList(
                title: 'Address',
                onTap: () {},
                icon: Icon(
                  Icons.local_attraction_outlined,
                  color: AppColors.grey,
                  size: 18,
                )),
            ProfileSettingsList(
                title: 'Settings',
                onTap: () {},
                icon: Icon(
                  Icons.settings,
                  color: AppColors.grey,
                  size: 18,
                )),
          ],
        ),
      )),
    );
  }
}
