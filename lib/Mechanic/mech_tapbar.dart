import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mech_request_home.dart';
import 'Mech_service_home.dart';

class MechTapbar extends StatefulWidget {
  const MechTapbar({super.key});

  @override
  State<MechTapbar> createState() => _MechTapbarState();
}

class _MechTapbarState extends State<MechTapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/men.png"),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffE8F1FF),
            ),
            tabs: [
              Tab(
                child: Text(
                  'Request',
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
                  'Accepted',
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
            MechServiceHome(), // Call the first class
            MechRequestHome(),

            // Call the second class
          ],
        ),
      ),
    );
  }
}
