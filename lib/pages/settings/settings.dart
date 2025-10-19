import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/setting_list.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
                label: 'Settings',
                icon: Icon(
                  Icons.notifications_outlined,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                  size: 27,
                )),
          ))),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(right: 18, left: 18),
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text('General',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 21,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SettingList(
                      title: 'Language',
                      label: 'English',
                      onPressed: () {
                        context.go("/language");
                      }),
                  SettingList(
                      title: 'My Profile',
                      label: '',
                      onPressed: () {
                        context.push('/profile');
                      }),
                  SettingList(
                      title: 'Contact Us',
                      label: '',
                      onPressed: () {
                        print('Clicked');
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Security',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                              fontSize: 21,
                              color: AppColors.grey,
                              fontWeight: FontWeight.w500)),
                  SizedBox(height: 17),
                  SettingList(
                      title: 'Change Password',
                      label: '',
                      onPressed: () {
                        context.go('/change_password');
                      }),
                  SettingList(
                      title: 'Privacy Policy',
                      label: '',
                      onPressed: () {
                        context.go('/terms_condition');
                      }),
                  SizedBox(
                    height: 18,
                  ),
                  Text('Choose what data you share with us'),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Biometric',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Switch(
                          value: true,
                          activeColor:
                              isDarkMode ? AppColors.white : AppColors.black,
                          inactiveThumbColor:
                              isDarkMode ? AppColors.grey : AppColors.white,
                          inactiveTrackColor: isDarkMode
                              ? Colors.grey.shade300
                              : AppColors.white,
                          onChanged: (bool value) {
                            print(value);
                          })
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
