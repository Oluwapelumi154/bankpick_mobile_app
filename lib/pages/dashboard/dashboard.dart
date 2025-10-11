import 'package:bankpick_mobile_app/components/input/debit_card.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bankpick_mobile_app/utlis/onboarding.data.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final List<Map<String, dynamic>> menuOptions = [
      {
        "label": "Sent",
        "icon": Icon(Icons.arrow_upward,
            size: 28, color: isDarkMode ? AppColors.white : AppColors.black),
      },
      {
        "label": 'Receive',
        "icon": Icon(Icons.arrow_downward,
            size: 28, color: isDarkMode ? AppColors.white : AppColors.black)
      },
      {
        "label": "Loan",
        "icon": Icon(Icons.paid,
            size: 28, color: isDarkMode ? AppColors.white : AppColors.black)
      },
      {
        "label": "Topup",
        "icon": Icon(Icons.cloud_upload_outlined,
            size: 28, color: isDarkMode ? AppColors.white : AppColors.black)
      }
    ];
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor:
                          isDarkMode ? AppColors.offWhite : AppColors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome back,'),
                          SizedBox(
                            height: 2.8,
                          ),
                          Text(
                            'AR Jonson',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontSize: 18.5),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                            fixedSize: Size(46, 46),
                            backgroundColor: isDarkMode
                                ? AppColors.black
                                : AppColors.offWhite),
                        icon: Icon(
                          Icons.search,
                          color: isDarkMode ? AppColors.white : AppColors.black,
                        ))
                  ],
                ),
              ),
            ),
          )),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(right: 18, left: 18),
        child: Column(children: [
          DebitCardWidget(),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: menuOptions.map((data) {
                return Column(
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        fixedSize: const Size(60, 60),
                        backgroundColor:
                            isDarkMode ? AppColors.black : AppColors.offWhite,
                      ),
                      onPressed: () {},
                      icon: data['icon'],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      data['label']!,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 17,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 10,
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
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                            color:
                                isDarkMode ? AppColors.white : AppColors.black,
                            fontSize: 16,
                          ))
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 15),
          ))
        ]),
      )),
    );
  }
}
