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
        leading:IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
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
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 40.w, top: 10.h),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Text(
                                        "engine work",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40.w),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Text(
                                        "Date",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40.w),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Text(
                                        "Time",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40.w),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Text(
                                        "Place",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30.w),
                                child: Row(
                                  children: [
                                    Text(
                                      "Rating",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 30.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellowAccent,
                                      size: 10.sp,
                                    ), Padding(
                                      padding:  EdgeInsets.only(left: 5.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellowAccent,
                                            size: 10.sp,
                                          ), Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellowAccent,
                                                size: 10.sp,
                                              ), Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellowAccent,
                                                    size: 10.sp,
                                                  ), Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star_border,
                                                        color: Colors.black,
                                                        size: 10.sp,
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),Row(children: [Padding(
                                padding:  EdgeInsets.only(left: 20.w),
                                child: Container(child: Text("4/5"),),
                              )],)
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffCFE2FF),
                      borderRadius: BorderRadius.circular(15.r)),
                  width: 320.w,
                  height: 160.h,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
