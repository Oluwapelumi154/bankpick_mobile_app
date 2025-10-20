import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String label;
  final Widget icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const TextInput(
      {super.key,
      required this.label,
      required this.icon,
      required this.controller,
      this.validator});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
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
            // height: 58,
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: widget.controller,
              validator: widget.validator,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: isDarkMode ? AppColors.white : AppColors.black),
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: widget.icon,
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 0,
                    minHeight: 0,
                  ),
                  // contentPadding:
                  //     const EdgeInsets.symmetric(horizontal: 12, vertical: 12),

                  // contentPadding: EdgeInsets.only(left: 50, right: 50),
                  prefixIconColor: AppColors.grey,
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
        ]);
  }
}
