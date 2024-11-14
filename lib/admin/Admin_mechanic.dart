import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminMechanic extends StatefulWidget {
  const AdminMechanic({super.key});

  @override
  State<AdminMechanic> createState() => _AdminMechanicState();
}

class _AdminMechanicState extends State<AdminMechanic> {
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
        ),
        body: Column(children: [
          Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 140.w, top: 10.h),
                  child: CircleAvatar(
                    child: Image(image: AssetImage("assets/men.png")),
                    radius: 50.r,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 170.w,
                  ),
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        fontSize: 25.sp, fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 170.w, top: 10.h),
                  child: Text(
                    "Location",
                    style: GoogleFonts.poppins(
                        fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: Text(
                    "Mech username",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w500),
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
                      "user name",
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
                      color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text(
                    "Phone number",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w500),
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
                      color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text(
                    "email address",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w500),
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
                      "Example@gmail.com",
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
                      color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text(
                    "work experience",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w500),
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
                      "experience",
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
                      color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text(
                    "work shop name",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w500),
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
                      "shop name",
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
                      color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: Text(
                    "enter your location",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w500),
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
                      "your location",
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
                      color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 60.w),
                child: Container(
                  child: Center(
                    child: Text("Accept",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 20.sp)),
                  ),
                  width: 150.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 10.w),
                child: Container(
                  child: Center(
                    child: Text("Reject",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 20.sp)),
                  ),
                  height: 60.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffFF9F9D)),
                ),
              )
            ],
          )
        ]));
  }
}
