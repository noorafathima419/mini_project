import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Usermechanicdetailss extends StatefulWidget {
  const Usermechanicdetailss({super.key});

  @override
  State<Usermechanicdetailss> createState() => _UsermechanicdetailssState();
}

class _UsermechanicdetailssState extends State<Usermechanicdetailss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffCFE2FF),
          leading:  IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),
          title: Padding(
            padding: EdgeInsets.only(left: 80.w),
            child: Text("Needed sevice"),
          ),
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 20.h),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  child: Image(image: AssetImage("assets/Bussiness men.png")),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 170.w),
                child: Center(
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 130.w, top: 30.h),
                child: Center(
                  child: Text(
                    "Contact number",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120.w),
                child: Center(
                  child: Text(
                    "2+ Year experience",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 10.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "Available",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff49CD6E),
                      borderRadius: BorderRadius.circular(10.r)),
                  height: 25.h,
                  width: 90.w,
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 30.h),
                child: Center(
                  child: Text(
                    "Add needed service",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 10.w),
                  child: Text(
                    "Fuel leaking",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 15.sp),
                  ),
                ),
                height: 40.h,
                width: 270.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xffCFE2FF)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: CircleAvatar(
                radius: 11.r,
                child: Icon(Icons.add),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
            )
          ]),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 40.w, top: 10.h),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 10.w),
                ),
                height: 40.h,
                width: 270.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xffCFE2FF)),
              ),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 40.w),
                child: Text(
                  "PLace",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 40.w, top: 10.h),
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.only(left: 10.w,top: 10.h),
                  child: Text(
                    "Beach road calicut",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 15.sp),
                  ),
                ),
                height: 70.h,
                width: 300.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Color(0xffCFE2FF)),
              ),
            ),
          ]),Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 100, top: 150),
                  child: Container(
                    child: Center(
                      child: Text(
                        "Request",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                    height: 50,
                    width: 212,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2357D9)),
                  ),
                ),
              ]
          )
        ]));
  }
}
