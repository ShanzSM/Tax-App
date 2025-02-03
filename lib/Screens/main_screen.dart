import 'package:flutter/material.dart';
import 'package:tax_app/Screens/document_screen.dart';
import 'package:tax_app/Screens/home_screen.dart';
import 'package:tax_app/Screens/notification_screen.dart';
import 'package:tax_app/Screens/profile_screen.dart';
import 'package:tax_app/constant/colors.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    DocumentScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        currentIndex: _currentPageIndex,
        selectedItemColor: Colors.green,
        showSelectedLabels: true, // Selected icon & text color
        unselectedItemColor: kGrey, // Unselected icon & text color
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w900,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w900,
        ),
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded, size: 40),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_document, size: 40),
            label: "Document",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 40),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 40),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
