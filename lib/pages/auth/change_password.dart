import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/input/text_input.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomAppBar(label: "Change Password"),
          ))),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(right: 18, left: 18, bottom: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextInput(label: "Current Password", icon: Icon(Icons.lock)),
            SizedBox(height: 20),
            TextInput(label: "New Password", icon: Icon(Icons.lock)),
            SizedBox(height: 20),
            TextInput(label: "Confirm New Password", icon: Icon(Icons.lock)),
            SizedBox(height: 40),
            SizedBox(
                height: 50,
                child: FilledButton(
                    style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        backgroundColor: AppColors.primary),
                    onPressed: () {},
                    child: Text(
                      "Change Password",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600),
                    )))
          ],
        ),
      )),
    );
  }
}
