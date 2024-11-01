import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechanicDetail extends StatefulWidget {
  const MechanicDetail({super.key});

  @override
  State<MechanicDetail> createState() => _MechanicDetailState();
}

class _MechanicDetailState extends State<MechanicDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (      backgroundColor: Color(0xffE8F1FF),
      body: ListView.separated(
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
                          padding: EdgeInsets.only(top: 40.h, left: 20.w),
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(

                                image: DecorationImage(
                                    image: AssetImage("assets/men.png"))),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.only( top: 10.h),
                                  child: Text(
                                    "Name",
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
                                  padding: EdgeInsets.only(left: 50.w),
                                  child: Text(
                                    "MobileNumber",
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
                                  padding: EdgeInsets.only(),
                                  child: Text(
                                    "Service",
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
                height: 130.h,
                color: Colors.white,
              ),
            );
          },
          itemCount: 6),
    );
  }
}

