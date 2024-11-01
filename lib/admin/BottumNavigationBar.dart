import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admin_home.dart';
import 'Admin_payment.dart';
import 'Mechanic_detail.dart';
import 'Tapbar.dart';

class BottomnavigathionbarWidgets extends StatefulWidget {
  const BottomnavigathionbarWidgets({super.key});

  @override
  State<BottomnavigathionbarWidgets> createState() =>
      _BottomnavigathionbarWidgetsState();
}

class _BottomnavigathionbarWidgetsState
    extends State<BottomnavigathionbarWidgets> {
  int _selectedIndex = 0;
  static const List<dynamic> _widgetOptions = [
    Tapbar(),
    AdminPayment(),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: 'Payment',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: 'Notification',
              backgroundColor: Colors.blue)
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
