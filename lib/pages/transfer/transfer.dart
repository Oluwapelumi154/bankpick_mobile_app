import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/input/debit_card.dart';
import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});
  static final List<Map<String, dynamic>> contact = [
    {
      "avatar": CircleAvatar(
        backgroundColor: AppColors.red,
      ),
      "name": "Oluwapelumi"
    },
    {
      "avatar": CircleAvatar(
        backgroundColor: AppColors.red,
      ),
      "name": "Oluwapelumi"
    },
    {
      "avatar": CircleAvatar(
        backgroundColor: AppColors.red,
      ),
      "name": "Oluwapelumi"
    },
    {
      "avatar": CircleAvatar(
        backgroundColor: AppColors.red,
      ),
      "name": "Oluwapelumi"
    },
    {
      "avatar": CircleAvatar(
        backgroundColor: AppColors.red,
      ),
      "name": "Oluwapelumi"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: CustomAppBar(label: "Send Money"),
          ))),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(right: 18, left: 18, bottom: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DebitCardWidget(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 180,
                child: Card(
                  color: AppColors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Send to',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: contact.length,
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 8),
                            itemBuilder: (context, index) {
                              final data = contact[index];
                              return SizedBox(
                                width: 80,
                                child: Column(
                                  children: [
                                    if (index == 0)
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: AppColors.black,
                                            border: Border.all(
                                                color: AppColors.primary,
                                                width: 1),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.add,
                                          color: AppColors.primary,
                                          size: 32,
                                        ),
                                      ),
                                    if (index != 0)
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: AppColors.white,
                                      ),
                                    SizedBox(height: 2),
                                    Text(
                                      data['name']!,
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
                child: Card(
                  color: AppColors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Enter Your Amount'),
                            Text(
                              "Change Currency?",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: AppColors.red),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "USD",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF9CB1D1)),
                                children: [
                              WidgetSpan(
                                  child: SizedBox(
                                width: 10,
                              )),
                              TextSpan(
                                  text: '36.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge
                                      ?.copyWith(fontWeight: FontWeight.w600))
                            ]))
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: AppColors.primary),
                      onPressed: () {},
                      child: Text(
                        'Send Money',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                color: AppColors.white,
                                fontSize: 16.5,
                                fontWeight: FontWeight.w600),
                      )))
            ],
          ),
        ),
      )),
    );
  }
}
