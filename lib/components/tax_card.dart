import 'package:flutter/material.dart';
import 'package:tax_app/Screens/tax_pay_screen.dart';
import 'package:tax_app/constant/colors.dart';
import 'package:tax_app/model/tax_card_model.dart';
import 'custom_button.dart';

class TaxCard extends StatelessWidget {
  final TaxCardModel taxCard;

  const TaxCard({Key? key, required this.taxCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
            ],
          ),
          child: Column(
            children: [
              Text(
                taxCard.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Image.asset(taxCard.iconPath,
                      width: 70, height: 70), // Asset image for icons
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                    height: MediaQuery.of(context).size.height * 0.10,
                    color: kGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text("Rs. ${taxCard.amount.toStringAsFixed(2)}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      CustomButton(
                        text: "Pay Now",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TaxPayScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
