import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechStatusComplited extends StatefulWidget {
  const MechStatusComplited({super.key});

  @override
  State<MechStatusComplited> createState() => _MechStatusComplitedState();
}

class _MechStatusComplitedState extends State<MechStatusComplited> {
  @override
  Widget build(BuildContext context) {
    String _selectedValue = 'completed';
    String _selectedValue1 = 'not completed';
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 30.h,left: 20.w),
                child: Container(
                  child: Icon(Icons.arrow_back_ios_sharp,size: 30.sp,),
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
                            padding: EdgeInsets.only(top: 20.h, left: 10.w),
                            child: CircleAvatar(
                              radius: 25.r,
                              backgroundImage: AssetImage("assets/boss.png"),
                              backgroundColor: Color(0xffCFE2FF),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60.w),
                            child: Text(
                              "Fuel leaking",
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
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 40.w),
                child: Container(
                  child: Text(
                    "Add Status",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 10),
                child: Radio<String>(
                  value: 'completed',
                  groupValue: _selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Text(
                      "Complited",
                      style: GoogleFonts.poppins(fontSize: 20.sp),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17, top: 10),
                        child: Radio<String>(
                          value: 'Not complited',
                          groupValue: _selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedValue = value!;
                            });
                          },
                        ),
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            "Not complited",
                            style: GoogleFonts.poppins(fontSize: 20.sp),
                          ),
                        ),
                      ])
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 30.w),
                child: Container(
                  child: Text("Amount",
                      style: GoogleFonts.poppins(
                          fontSize: 25.sp, fontWeight: FontWeight.w500)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.h, left: 80.w),
                child: Container(
                  child: Center(
                    child: Text(
                      "\u20B9    2000/-",
                      style: GoogleFonts.poppins(fontSize: 25.sp),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(width: 2, color: Colors.black)),
                  width: 250.w,
                  height: 50.h,
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 90.w, top: 140.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "Submit",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp),
                    ),
                  ),
                  height: 50.h,
                  width: 250.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff2357D9)),
                ),
              ),
            ],
          )
        ]));
  }
}
