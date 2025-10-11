import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/input/debit_card.dart';
import 'package:bankpick_mobile_app/components/progress_chart.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:bankpick_mobile_app/utlis/onboarding.data.dart';
import 'package:flutter/material.dart';

class DebitCard extends StatelessWidget {
  const DebitCard({super.key});
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: CustomAppBar(
                label: 'My Cards',
                icon: Icon(
                  Icons.add,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                  weight: 40,
                  size: 27,
                )),
          ))),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 18, right: 18, bottom: 10),
        margin: EdgeInsets.only(top: 15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DebitCardWidget(),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.separated(
              itemCount: transactionHistory.length,
              itemBuilder: (BuildContext context, int index) {
                final transaction = transactionHistory[index];
                return Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color:
                              isDarkMode ? AppColors.black : AppColors.offWhite,
                          shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.apple,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(transaction['name']!,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: isDarkMode
                                        ? AppColors.white
                                        : AppColors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 2,
                        ),
                        Text('Entertainment')
                      ],
                    )),
                    Text('\$2000',
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: isDarkMode
                                      ? AppColors.white
                                      : AppColors.black,
                                  fontSize: 16,
                                ))
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 20),
            )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Monthly spending limit',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: isDarkMode ? AppColors.black : AppColors.offWhite,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: isDarkMode ? AppColors.black : AppColors.offWhite),
                  borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "Amount:",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                        fontSize: 17,
                                        color: isDarkMode
                                            ? AppColors.white
                                            : AppColors.black),
                                children: [
                              WidgetSpan(
                                  child: SizedBox(
                                width: 7,
                              )),
                              TextSpan(
                                  text: '\$8000',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                          color: isDarkMode
                                              ? AppColors.white
                                              : AppColors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500))
                            ])),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          child:
                              MonthlySpendingBar(limit: 100000, spent: 60000),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
