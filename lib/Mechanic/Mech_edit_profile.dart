import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechEditProfile extends StatefulWidget {
  const MechEditProfile({super.key});

  @override
  State<MechEditProfile> createState() => _MechEditProfileState();
}

class _MechEditProfileState extends State<MechEditProfile> {
  @override
  Widget build(BuildContext context) {
    final form_key = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Container(
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 320.w),
                child: Icon(
                  Icons.edit_calendar_sharp,
                  size: 35,
                ),
              )
            ],
          ),
          Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 140.w,
                  ),
                  child: CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/men.png"),
                      fit: BoxFit.cover,
                    ),
                    radius: 70.r,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 10.h),
                    child: Text(
                      "Name",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  width: 320.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffE8F1FF)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 10.h),
                    child: Text(
                      "User name",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  width: 320.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffE8F1FF)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 10.h),
                    child: Text(
                      "Phone number",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  width: 320.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffE8F1FF)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 10.h),
                    child: Text(
                      "Email",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  width: 320.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffE8F1FF)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 10.h),
                    child: Text(
                      "Experience",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  width: 320.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffE8F1FF)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 10.h),
                    child: Text(
                      "Location",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  width: 320.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffE8F1FF)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 10.h),
                    child: Text(
                      "Shop name",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  width: 320.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffE8F1FF)),
                ),
              ),
            ],
          ), Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.w, top: 50.h),
                child: InkWell(
                  onTap: () {
                    if (form_key.currentState!.validate()) {
                      print("object");

                    }
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Done",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 25.sp),
                      ),
                    ),
                    width: 200.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xff2357D9)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
