import 'package:flutter/material.dart';
import 'package:tax_app/constant/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, color: kWhite),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Profile Image Section
          Center(
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green[300], // Background color for the avatar
                  ),
                  child:
                      const Icon(Icons.person, size: 100, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Tishan Shavinda",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Reg Num: TAB4025.",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                const Divider(thickness: 1, indent: 50, endIndent: 50),
              ],
            ),
          ),

          // Profile Details Card
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 5, spreadRadius: 1),
              ],
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Category : Retail Shop",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("Email: example@gmail.com"),
                SizedBox(height: 5),
                Text("Phone Number : 0772450300"),
                SizedBox(height: 5),
                Text("Address: 40/6 Dharmapala Road, Bandarawela."),
                SizedBox(height: 5),
                Text("Pradeshiya Sabha : Bandarawela"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
