import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class LanguageOption extends StatelessWidget {
  final String image;
  final String label;
  final bool? isSelected;
  const LanguageOption(
      {super.key, required this.image, required this.label, this.isSelected});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          SizedBox(
            height: 65,
            child: Row(
              children: [
                Image.asset(
                  image,
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Text(
                  label,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: isDarkMode ? AppColors.white : AppColors.black,
                      fontSize: 18),
                )),
                if (isSelected != null)
                  Container(
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                        color: AppColors.primary, shape: BoxShape.circle),
                    child: Icon(
                      Icons.check,
                      color: AppColors.white,
                      size: 18,
                    ),
                  )
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Divider(
            color: isDarkMode ? AppColors.grey : AppColors.offWhite,
            height: 0.2,
          )
        ],
      ),
    );
  }
}
