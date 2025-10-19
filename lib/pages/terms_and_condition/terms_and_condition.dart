import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomAppBar(label: "Terms & Condition"),
            ))),
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.only(top: 15),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(right: 18, left: 18, bottom: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Thank you for visting our Application "),
              Text("Doctor 24 X 7 and enrolling as a member")
            ],
          ),
        )));
  }
}
