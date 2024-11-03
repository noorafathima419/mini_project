import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechSighnUp extends StatefulWidget {
  const MechSighnUp({super.key});

  @override
  State<MechSighnUp> createState() => _MechSighnUpState();
}

class _MechSighnUpState extends State<MechSighnUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 10.w),
                child: Container(
                  child: Icon(Icons.arrow_back_ios_sharp),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.w, ),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/admin.png"))),
                  height: 200.h,
                  width: 200.w,
                  //
                  // color: Colors.grey,
                ),
              )
            ],
          ),Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 150.w,),
                  child: Text(
                    "Sign up",
                    style:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 28.sp),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 70.w,top: 30.h),
                  child: Text(
                    "Enter username",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text(
                      "username",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 50.h,
                  width: 286.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                ),
              )
            ],
          ),Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 70.w),
                  child: Text(
                    "Enter phonenumber",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text(
                      "Phone number",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 50.h,
                  width: 286.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                ),
              )
            ],
          ),Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 70.w),
                  child: Text(
                    "Enter your email",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text(
                      "enter email",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 50.h,
                  width: 286.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                ),
              )
            ],
          ),Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 70.w),
                  child: Text(
                    "Enter your worlexperience",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text(
                      "enter work experience",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 50.h,
                  width: 286.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                ),
              )
            ],
          ),Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 70.w),
                  child: Text(
                    "Enter yourbwork shop name",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text(
                      "work shop name",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 50.h,
                  width: 286.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                ),
              )
            ],
          ),Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 70.w),
                  child: Text(
                    "Enter your password",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text(
                      "enter your password",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                  height: 50.h,
                  width: 286.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                ),
              )
            ],
          ),Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120.w, top: 50.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "Sign Up",
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
            ],
          )
        ],
      ),
    );
  }
}
