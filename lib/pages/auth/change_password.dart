import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/input/text_input.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:bankpick_mobile_app/utlis/validator.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController currentPassword;
  late TextEditingController newPassword;
  late TextEditingController confirmPassword;

  @override
  void initState() {
    super.initState();
    confirmPassword = TextEditingController(text: "");
    newPassword = TextEditingController(text: "");
    currentPassword = TextEditingController(text: "");
  }

  @override
  void dispose() {
    confirmPassword.dispose();
    newPassword.dispose();
    currentPassword.dispose();
    super.dispose();
  }

  void onSubmit() {}

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
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextInput(
                  label: "Current Password",
                  controller: currentPassword,
                  validator: Validator.requiredField,
                  icon: Icon(Icons.lock)),
              SizedBox(height: 20),
              TextInput(
                  label: "New Password",
                  controller: newPassword,
                  validator: Validator.requiredField,
                  icon: Icon(Icons.lock)),
              SizedBox(height: 20),
              TextInput(
                  label: "Confirm New Password",
                  controller: confirmPassword,
                  validator: Validator.requiredField,
                  icon: Icon(Icons.lock)),
              SizedBox(height: 40),
              SizedBox(
                  height: 50,
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)),
                          backgroundColor: AppColors.primary),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          onSubmit();
                        } else {
                          print('Invalid form');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Row(
                                children: [
                                  Icon(Icons.check_circle_outline,
                                      color: Colors.white),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text("Signed in successfully!",
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                              backgroundColor: AppColors.red,
                              behavior: SnackBarBehavior.floating,
                              margin: EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Change Password",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(
                                fontSize: 16,
                                color: AppColors.white,
                                fontWeight: FontWeight.w600),
                      )))
            ],
          ),
        ),
      )),
    );
  }
}
