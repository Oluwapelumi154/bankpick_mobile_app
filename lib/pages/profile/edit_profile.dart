import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/input/text_input.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: CustomAppBar(
                    label: 'Edit Profile',
                  )))),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(right: 18, left: 18),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.offWhite,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Dennis Nzioki',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Senior Designer')
                ],
              ),
            ),
            TextInput(label: "Full Name", icon: Icon(Icons.person)),
            SizedBox(
              height: 20,
            ),
            TextInput(label: "Email address", icon: Icon(Icons.email_outlined)),
            SizedBox(
              height: 20,
            ),
            TextInput(label: "Phone Number", icon: Icon(Icons.call_outlined)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextInput(
                      label: "Birth Date",
                      icon: Icon(Icons.calendar_view_day_outlined)),
                ),
                SizedBox(
                  width: 16,
                ),
                SizedBox(
                  width: 140,
                  child: TextInput(
                      label: "", icon: Icon(Icons.calendar_month_outlined)),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextInput(
                      label: "", icon: Icon(Icons.calendar_view_week_rounded)),
                )
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                'Joined 28 Jan 2021',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 16,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      )),
    );
  }
}
