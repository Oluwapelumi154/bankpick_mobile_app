import 'package:bankpick_mobile_app/components/input/password_input.dart';
import 'package:bankpick_mobile_app/components/input/text_input.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:bankpick_mobile_app/utlis/validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController fullName;
  late TextEditingController phoneNumber;
  late TextEditingController email;
  late TextEditingController password;

  void onSubmit() {
    print(fullName.text);
    print(phoneNumber.text);
    print(email.text);
    print(password.text);
    context.go('/dashboard');
  }

  @override
  void initState() {
    super.initState();
    fullName = TextEditingController();
    phoneNumber = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    phoneNumber.dispose();
    fullName.dispose();
    password.dispose();
    super.dispose();
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
                'Sign Up',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 30),
              Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextInput(
                        label: "Full Name",
                        icon: Icon(Icons.email_outlined),
                        controller: fullName,
                        validator: Validator.requiredField,
                      ),
                      SizedBox(height: 20),
                      TextInput(
                        label: "Phone Number",
                        icon: Icon(Icons.call_outlined),
                        controller: phoneNumber,
                        validator: Validator.phoneNumber,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextInput(
                        label: "Email Address",
                        icon: Icon(Icons.email_outlined),
                        controller: email,
                        validator: Validator.email,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordInput(
                        label: "Password",
                        controller: password,
                        validator: Validator.requiredField,
                      ),
                      SizedBox(
                        height: 35,
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
                                  print("Validated");
                                } else {
                                  print('Form Invalid');
                                }
                              },
                              child: Text('Sign Up',
                                  style:
                                      Theme.of(context).textTheme.bodySmall))),
                    ],
                  )),
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
                          text: "Sign In",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.push('/signin');
                            },
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
