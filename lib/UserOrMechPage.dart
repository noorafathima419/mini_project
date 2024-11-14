import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Mechanic/mech_login.dart';
import 'User/User_login.dart';
import 'admin/login.dart';

class Userormechpage extends StatefulWidget {
  const Userormechpage({super.key});

  @override
  State<Userormechpage> createState() => _UserormechpageState();
}

class _UserormechpageState extends State<Userormechpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
        backgroundColor: Color(0xffCFE2FF),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 130.w, top: 50.h),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/admin.png"))),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Text(
                  "Who you are",
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h),
                child: InkWell(onTap: () {
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return MechLogin();
                      },
                    ));
                  }
                },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Mechanic",
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    width: 290.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xff2357D9)),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h),
                child: InkWell(onTap: () {
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return UserLogin();
                      },
                    ));
                  }
                },
                  child: Container(
                    child: Center(
                      child: Text(
                        "User",
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    width: 290.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          TextButton(
            onPressed: () {
              {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ));
              }
            },
            child: Text(
              "Admin Login",
              style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigoAccent),
            ),
          ),
          Row(
            children: [
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: 200.h,left: 90.w),
                  child: Container(
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    width: 200.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xff2357D9)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
