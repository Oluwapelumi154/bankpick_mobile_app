import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/input/debit_card.dart';
import 'package:bankpick_mobile_app/components/input/text_input.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: CustomAppBar(label: "Add New Card"),
          ))),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 18, left: 18, bottom: 14),
        child: Column(
          children: [
            DebitCardWidget(),
            SizedBox(
              height: 35,
            ),
            TextInput(label: "Cardholder Name", icon: Icon(Icons.person)),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child:
                      TextInput(label: "Expiry Date", icon: Icon(Icons.person)),
                ),
                SizedBox(
                  width: 40,
                ),
                Expanded(
                  child:
                      TextInput(label: "4 Digit CVV", icon: Icon(Icons.person)),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextInput(label: "Card Number", icon: Icon(Icons.wallet))
          ],
        ),
      )),
    );
  }
}
