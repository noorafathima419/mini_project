import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UserPaymentPage.dart';
import 'UserRatingPage.dart';

class Usermerchnicbill extends StatefulWidget {
  const Usermerchnicbill({super.key});

  @override
  State<Usermerchnicbill> createState() => _UsermerchnicbillState();
}

class _UsermerchnicbillState extends State<Usermerchnicbill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Padding(
          padding: EdgeInsets.only(left: 80.w),
          child: Text("Mechanic Bill"),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 180.w, top: 20.h),
                child: Container(
                  height: 40.h,
                  width: 40.w,
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
                padding: EdgeInsets.only(left: 100.w),
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
                padding: EdgeInsets.only(left: 110.w, top: 10.h),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 18.sp,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, top: 10.h),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.sp,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 10.h),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5.w, top: 10.h),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18.sp,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5.w, top: 10.h),
                                child: Icon(
                                  Icons.star_half,
                                  color: Colors.yellow,
                                  size: 18.sp,
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 5.w, top: 10.h),
                                    child: InkWell(onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) {
                                          return Userratingpage();
                                        },
                                      ));
                                    },
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.black,
                                        size: 18.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 70.h),
                child: Text(
                  "Amount",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 90.w,top: 40.h
                ),
                child: Container(
                  height: 45.h,
                  width: 250.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(width: 1.w, color: Colors.black)),
                ),
              )
            ],
          ),Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120.w, top: 100.h),
                child: InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Userpaymentpage();
                    },
                  ));
                },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Payment",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp),
                      ),
                    ),
                    height: 50.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xff2357D9)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
