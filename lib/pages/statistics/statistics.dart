import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/input/line_chart.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:bankpick_mobile_app/utlis/onboarding.data.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

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
                label: 'Statistics',
                icon: Icon(
                  Icons.notifications_outlined,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                  size: 27,
                )),
          ))),
      body: SafeArea(
          child: Padding(
        padding:
            const EdgeInsets.only(right: 17, left: 17, top: 10, bottom: 15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Current Balance',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 20,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 13),
              Center(
                child: Text(
                  '\$70000',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: isDarkMode ? AppColors.white : AppColors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(isDarkMode
                      ? 'assets/images/vertical.png'
                      : 'assets/images/graph-light.png'),
                  fit: BoxFit.cover,
                )),
                height: 265,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleLineChart(
                    width: double.infinity,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text('Sell All',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.primary,
                          fontSize: 16.5,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(height: 20),
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
                            color: isDarkMode
                                ? AppColors.black
                                : AppColors.offWhite,
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
                                      fontWeight: FontWeight.w500)),
                          SizedBox(
                            height: 2,
                          ),
                          Text('Entertainment')
                        ],
                      )),
                      Text('\$2000',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
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
      )),
    );
  }
}
