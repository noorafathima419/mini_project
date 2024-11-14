import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAdmin extends StatefulWidget {
  const AddAdmin({super.key});

  @override
  State<AddAdmin> createState() => _AddAdminState();
}

class _AddAdminState extends State<AddAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),appBar: AppBar(leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios_new_sharp)),),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 40.h),
                  child: Text(
                    "Enter Matter",
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
                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "Matter",
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  height: 55.h,
                  width: 330.w,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 40.h),
                  child: Text(
                    "Enter Content",
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
                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 20.w),
                    child: Text(
                      "Content....",
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  height: 390.h,
                  width: 330.w,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.w, top: 50.h),
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
