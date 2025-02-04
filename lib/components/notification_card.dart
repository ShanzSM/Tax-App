import 'package:flutter/material.dart';
import 'package:tax_app/components/custom_button.dart';
import 'package:tax_app/model/notification_model.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notifi;
  NotificationCard({super.key, required this.notifi});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // **Title**
          Center(
            child: Text(
              notifi.title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(
            height: 5,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // **Icon**
                Image.asset(
                  notifi.imageurl,
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notifi.message,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
