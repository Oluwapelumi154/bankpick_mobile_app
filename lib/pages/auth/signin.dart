import 'package:bankpick_mobile_app/components/input/password_input.dart';
import 'package:bankpick_mobile_app/components/input/text_input.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:bankpick_mobile_app/utlis/validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:go_router/go_router.dart";

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    email = TextEditingController(text: '');
    password = TextEditingController(text: "");
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void onSubmit() {
    print(email.text);
    print(password.text);
    context.push('/dashboard');
  }

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
                'Sign In',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextInput(
                        label: "Email Address",
                        controller: email,
                        validator: Validator.email,
                        icon: Icon(Icons.email_outlined)),
                    SizedBox(
                      height: 30,
                    ),
                    PasswordInput(
                      label: "Password",
                      validator: Validator.requiredField,
                      controller: password,
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
                              if (_formKey.currentState!.validate()) {
                                onSubmit();
                              } else {
                                print('Form Not Valid');
                              }
                            },
                            child: Text('Sign In',
                                style: Theme.of(context).textTheme.bodySmall))),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        text: 'I\'m a new user.',
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.push("/signup");
                            },
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
