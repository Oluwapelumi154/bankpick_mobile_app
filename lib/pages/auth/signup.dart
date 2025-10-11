import 'package:bankpick_mobile_app/components/input/password_input.dart';
import 'package:bankpick_mobile_app/components/input/text_input.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(85),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      style: IconButton.styleFrom(
                          alignment: Alignment.center,
                          fixedSize: const Size(45, 45),
                          backgroundColor: isDarkMode
                              ? Color(0XFF1E1E2D)
                              : AppColors.offWhite),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: isDarkMode ? AppColors.white : AppColors.black,
                      )),
                ],
              ),
            ),
          )),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Sign Up',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 40),
              TextInput(label: "Full Name", icon: Icon(Icons.email_outlined)),
              SizedBox(height: 30),
              TextInput(label: "Phone Number", icon: Icon(Icons.call_outlined)),
              SizedBox(
                height: 30,
              ),
              TextInput(
                  label: "Email Address", icon: Icon(Icons.email_outlined)),
              SizedBox(
                height: 30,
              ),
              PasswordInput(
                label: "Password",
              ),
              SizedBox(
                height: 45,
              ),
              SizedBox(
                  height: 52,
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14))),
                      onPressed: () {
                        context.push('/dashboard');
                      },
                      child: Text('Sign Up',
                          style: Theme.of(context).textTheme.bodySmall))),
              SizedBox(
                height: 30,
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        text: 'Already have an account.',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                        children: [
                      WidgetSpan(
                          child: SizedBox(
                        width: 5,
                      )),
                      TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 17,
                              fontWeight: FontWeight.w500))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
