import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_status_complited.dart';

class MechRequestHome extends StatefulWidget {
  const MechRequestHome({super.key});

  @override
  State<MechRequestHome> createState() => _MechRequestHomeState();
}

class _MechRequestHomeState extends State<MechRequestHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [Expanded(
              child: InkWell(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return MechStatusComplited();
                  },
                ));
              },
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        width: 20.w,
                        height: 20.h,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 30.w, right: 30.r),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: Container(
                                      height: 50.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/boss.png"))),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 60.w, top: 10.h),
                                            child: Text(
                                              "Fuel leaking",
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 20.w),
                                            child: Text(
                                              "Date",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:  EdgeInsets.only(left: 30.w
                                                ),
                                                child: Container(
                                                  child: Center(
                                                    child: Text(
                                                      "Peyment pending",
                                                      style: GoogleFonts.poppins(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(15.r),
                                                      color: Color(0xffCD4949)),
                                                  width: 107.w,
                                                  height: 18,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 20.w),
                                            child: Text(
                                              "Time",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 30.w),
                                            child: Text(
                                              "Name",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 30.w),
                                            child: Text(
                                              "Price",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          width: 350.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Color(0xffCFE2FF)),
                        ),
                      );
                    },
                    itemCount: 4),
              ),
            ),
          ]),
        ));
  }
}
