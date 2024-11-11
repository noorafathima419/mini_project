import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Mech_rating.dart';
import 'Mech_request_home.dart';
import 'Mech_service.dart';
import 'Mech_service_home.dart';
import 'mech_tapbar.dart';

class MechBottomnavigationbar extends StatefulWidget {
  const MechBottomnavigationbar({super.key});

  @override
  State<MechBottomnavigationbar> createState() =>
      _MechBottomnavigationbarState();
}

class _MechBottomnavigationbarState extends State<MechBottomnavigationbar> {
  int _selectedIndex = 0;
  static const List<dynamic> _widgetOptions = [
    MechTapbar(),
    MechService(),
    MechRating(),

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
              icon: Icon(Icons.person),
              label: 'Request',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_repair),
              label: 'Service',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Rating',
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
