import 'package:flutter/material.dart';
import 'package:tax_app/components/custom_button.dart';
import 'package:tax_app/constant/colors.dart';
import 'package:tax_app/model/document_card.dart';

class DocumentCard extends StatelessWidget {
  final DocumentCardModel docCard;
  const DocumentCard({super.key, required this.docCard});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // **Title**
          Center(
            child: Text(
              docCard.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 8),

          // **Description & Icon Row**
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // **Icon**
                Image.asset(
                  docCard.imagepath,
                  width: 70,
                  height: 70,
                ),
                SizedBox(width: 20),

                // **Description & Button**
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        docCard.description,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 15),

                      // **Apply Now Button**
                      CustomButton(
                        text: "Apply Now",
                        onPressed: () {
                          // Add your action here
                        },
                        color: Colors.green, // Ensure kMainColor matches the UI
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
