import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  const PasswordInput(
      {super.key,
      required this.label,
      required this.controller,
      this.validator});

  @override
  State<PasswordInput> createState() => _TextInputState();
}

class _TextInputState extends State<PasswordInput> {
  late bool isPasswordVisible;

  @override
  void initState() {
    super.initState();
    isPasswordVisible = false;
  }

  void togglePassword() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(widget.label),
        SizedBox(
          height: 3,
        ),
        SizedBox(
          // height: 45,
          child: TextFormField(
            controller: widget.controller,
            validator: widget.validator,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isDarkMode ? AppColors.white : AppColors.black),
            obscureText: isPasswordVisible ? false : true,
            decoration: InputDecoration(
                hintText: "",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.lock_outline,
                    color: AppColors.grey,
                  ),
                ),
                prefixIconColor: AppColors.grey,
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 0,
                  minHeight: 0,
                ),
                suffixIconConstraints: const BoxConstraints(
                  minWidth: 0,
                  minHeight: 0,
                ),
                suffixIcon: InkWell(
                    onTap: togglePassword,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                          isPasswordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: AppColors.grey),
                    )),
                suffixIconColor: AppColors.grey,
                hintStyle: TextStyle(color: AppColors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey, width: 0.5),
                  borderRadius: BorderRadius.zero,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: AppColors.grey, width: 0.5),
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: AppColors.grey, width: 0.5),
                )),
          ),
        )
      ],
    );
  }
}
