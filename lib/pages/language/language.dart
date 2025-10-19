import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/language-option.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomAppBar(label: "Language"),
            ))),
        body: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(right: 18, left: 18, bottom: 20),
          margin: EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.offWhite),
                          borderRadius: BorderRadius.circular(13)),
                      fillColor: AppColors.bottomNavbarBackground,
                      prefixIcon: Icon(Icons.search, color: AppColors.offWhite),
                      filled: true,
                      hintText: "Search Language",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                              color: AppColors.offWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(height: 8),
              LanguageOption(
                  image: 'assets/images/country-flags/uk.png',
                  isSelected: true,
                  label: "English"),
              LanguageOption(
                  image: 'assets/images/country-flags/america.png',
                  label: "America"),
              LanguageOption(
                  image: 'assets/images/country-flags/france.png',
                  label: "French"),
              LanguageOption(
                  image: 'assets/images/country-flags/spanish.png',
                  label: "Spanish"),
            ],
          ),
        )));
  }
}
