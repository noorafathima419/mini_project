import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'UserMechnicList.dart';
import 'UserRequestMechniclist.dart';
import 'User_notification.dart';
import 'User_profile.dart';

class Usermechnictapbar extends StatefulWidget {
  const Usermechnictapbar({super.key});

  @override
  State<Usermechnictapbar> createState() => _UsermechnictapbarState();
}

class _UsermechnictapbarState extends State<Usermechnictapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffE8F1FF),
          leading: InkWell(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return UserProfile();
              },
            ));
          },
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.jpeg"),
            ),
          ),
          actions: [
            InkWell(onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return UserNotification();
                },
              ));
            },
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    image: DecorationImage(
                        image: AssetImage("assets/notification.png"))),
              ),
            )
          ],
          title: Container(
            height: 40.h,
            width: 230.w,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Empty username";
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        40.sp,
                      )),
                  prefixIconColor: Color(0xffCFE2FF),
                  suffixIconColor: Color(0xffCFE2FF),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Search",
                  filled: true),
              obscureText: true,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Usermechniclist(), // Call the first class
            Userrequestmechniclist(),
            // Call the second class
          ],
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.indigoAccent,
            ),
            tabs: [
              Tab(
                child: Text(
                  'Mechanic',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Request',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
