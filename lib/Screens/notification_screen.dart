import 'package:flutter/material.dart';
import 'package:tax_app/components/notification_card.dart';
import 'package:tax_app/constant/colors.dart';
import 'package:tax_app/data/notificationdata.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                    // Scrollable Tax List
                    Expanded(
                      child: ListView.builder(
                        itemCount: notifiItems.length,
                        itemBuilder: (context, index) {
                          return NotificationCard(notifi: notifiItems[index]);
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
