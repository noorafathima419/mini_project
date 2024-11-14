import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admin_home.dart';
import 'Mechanic_detail.dart';

class Tapbar extends StatefulWidget {
  const Tapbar({super.key});

  @override
  State<Tapbar> createState() => _TapbarState();
}

class _TapbarState extends State<Tapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(  backgroundColor: Color(0xffE8F1FF),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/profile.jpeg"),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.indigoAccent,
            ),
            tabs: [
              Tab(
                child: Text(
                  'User',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Mechanic',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AdminHome(), // Call the first class
            MechanicDetail(),

            // Call the second class
          ],
        ),
      ),
    );
  }
}
