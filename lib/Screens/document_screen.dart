import 'package:flutter/material.dart';
import 'package:tax_app/components/Document_Card.dart';
import 'package:tax_app/constant/colors.dart';
import 'package:tax_app/data/document_card_data.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
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
                        itemCount: cardItems.length,
                        itemBuilder: (context, index) {
                          return DocumentCard(docCard: cardItems[index]);
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
