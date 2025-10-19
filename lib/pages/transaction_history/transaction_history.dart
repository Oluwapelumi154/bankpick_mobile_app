import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:bankpick_mobile_app/utlis/onboarding.data.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

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
                label: 'Transaction History',
                icon: Icon(
                  Icons.update,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                  size: 27,
                )),
          ))),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 18, left: 18, top: 30, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white),
                ),
                Text(
                  'See all',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColors.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 25),
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
                          color: isDarkMode ? AppColors.white : AppColors.black,
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
                  SizedBox(height: 15),
            ))
          ],
        ),
      ),
    );
  }
}
