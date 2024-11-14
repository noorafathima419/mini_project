import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechserviceAcceptReject extends StatefulWidget {
  const MechserviceAcceptReject({super.key});

  @override
  State<MechserviceAcceptReject> createState() =>
      _MechserviceAcceptRejectState();
}

class _MechserviceAcceptRejectState extends State<MechserviceAcceptReject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,appBar: AppBar(leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios_new_sharp)),backgroundColor: Colors.white,),
        body: Column(children: [
          Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 45.w, top: 100.h),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 120.w),
                          child: Row(
                            children: [
                              Center(
                                child: CircleAvatar(
                                  radius: 30.r,
                                  backgroundImage:
                                      AssetImage("assets/boss.png"),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 125.w),
                              child: Text(
                                "Name",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 50.h),
                              child: Text(
                                "Problem               :fuel leaking",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                "Place                     :Kozhikode beach road",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                "Date                       :12/11/2024",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                "Time                       :10:00 am",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                "Contact number :0000000000",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 50.h, left: 30.w),
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Accept",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Color(0xff49CD6E)),
                                width: 110.w,
                                height: 40.h,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 50.h, left: 30.w),
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "Reject",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.sp),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        color: Color(0xffCD4949)),
                                    width: 110.w,
                                    height: 40.h,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xffCFE2FF)),
                    width: 322.w,
                    height: 500.h,
                  ),
                ),
              )
            ],
          )
        ]));
  }
}
