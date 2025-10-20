import 'package:bankpick_mobile_app/components/input/app_bar.dart';
import 'package:bankpick_mobile_app/components/input/debit_card.dart';
import 'package:bankpick_mobile_app/components/input/text_input.dart';
import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final TextEditingController cardHolderName = TextEditingController(text: "");
  final TextEditingController expiryDate = TextEditingController(text: "");
  final TextEditingController cvv = TextEditingController(text: "");
  final TextEditingController cardNumber = TextEditingController(text: "");

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
            TextInput(
                label: "Cardholder Name",
                controller: cardHolderName,
                icon: Icon(Icons.person)),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextInput(
                      label: "Expiry Date",
                      controller: expiryDate,
                      icon: Icon(Icons.person)),
                ),
                SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: TextInput(
                      label: "4 Digit CVV",
                      controller: cvv,
                      icon: Icon(Icons.person)),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextInput(
                label: "Card Number",
                controller: cardNumber,
                icon: Icon(Icons.wallet))
          ],
        ),
      )),
    );
  }
}
