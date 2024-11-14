import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UserMechnicTapbar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,appBar: AppBar(leading:  IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios_new_sharp)),),
        body: Column(children: [
          Row(
            children: [
              Center(
                child: Padding(
                    padding: EdgeInsets.only(left: 140.w, top: 50.h),
                    child: CircleAvatar(
                      radius: 50.r,
                      backgroundImage: AssetImage("assets/profile.jpeg"),
                    )),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 160.w, top: 10.h),
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 70.h),
                  child: Text(
                    "Enter your name",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 20.w),
                    child: Text(
                      "Name",
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 60.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffCFE2FF)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 30.h),
                  child: Text(
                    "Enter you Phone number",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 20.w),
                    child: Text(
                      "000000000",
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 60.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffCFE2FF)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 30.h),
                  child: Text("Enter your Email address",
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.black)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 20.w),
                    child: Text(
                      "Enter email",
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 60.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffCFE2FF)),
                ),
              )
            ],
          ),Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 90, top: 300),
              child: InkWell(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Usermechnictapbar();
                  },
                ));
              },
                child: Container(
                  child: Center(
                    child: Text(
                      "Done",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff2357D9)),
                ),
              ),
            ),
          ])
        ]));
  }
}
