import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechRating extends StatefulWidget {
  const MechRating({super.key});

  @override
  State<MechRating> createState() => _MechRatingState();
}

class _MechRatingState extends State<MechRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: Icon(Icons.arrow_back_ios_sharp),
        title: Padding(
          padding: EdgeInsets.only(left: 80.w),
          child: Text("Rating"),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 100.w),
                child: Container(
                  child: Text(
                    "The rating given to you",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 40.h),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, left: 10.w),
                            child: CircleAvatar(
                              radius: 25.r,
                              backgroundImage: AssetImage("assets/boss.png"),
                              backgroundColor: Color(0xffCFE2FF),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60.w),
                            child: Text(
                              "Engine Work",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text(
                              "Name",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15.sp),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 60.w,
                                ),
                                child: Text(
                                  "Date",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 80.w),
                                child: Row(
                                  children: [
                                    Text(
                                      "Rating",
                                      style: GoogleFonts.poppins(fontSize: 11),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 120.w),
                            child: Text(
                              "Time",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 70.w),
                            child: Icon(
                              Icons.star,
                              size: 11,color: Colors.yellow,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            size: 11,color: Colors.yellow
                          ),
                          Icon(
                            Icons.star,
                            size: 11,color: Colors.yellow
                          ),
                          Icon(
                            Icons.star,
                            size: 11,color: Colors.yellow
                          ),Icon(
                              Icons.star,
                              size: 11,color: Colors.black
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 120.w),
                            child: Text(
                              "Place",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.sp, fontWeight: FontWeight.w400),
                            ),
                          ),Padding(
                            padding:  EdgeInsets.only(left: 90.w),
                            child: Text("4/7"),
                          )
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffCFE2FF),
                      borderRadius: BorderRadius.circular(15.r)),
                  width: 320.w,
                  height: 145.h,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
