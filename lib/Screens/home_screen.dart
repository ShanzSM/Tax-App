import 'package:flutter/material.dart';
import 'package:tax_app/components/tax_card.dart';
import 'package:tax_app/constant/colors.dart';
import '../data/tax_card_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Tax Pay",
            style: TextStyle(fontWeight: FontWeight.bold, color: kWhite)),
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.white),
      ),
      body: Column(
        children: [
          // Shop Info Card
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.77,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 5, spreadRadius: 1),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Retail Shop",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("40/6 Dharmapala Road, Bandarawela.",
                        style: TextStyle(color: Colors.grey)),
                    Divider(
                      color: kGrey.withOpacity(0.3),
                      thickness: 3,
                    ),
                    // Scrollable Tax List
                    Expanded(
                      child: ListView.builder(
                        itemCount: taxItems.length,
                        itemBuilder: (context, index) {
                          return TaxCard(taxCard: taxItems[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
