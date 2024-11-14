import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechNotification extends StatefulWidget {
  const MechNotification({super.key});

  @override
  State<MechNotification> createState() => _MechNotificationState();
}

class _MechNotificationState extends State<MechNotification> {
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
          child: Text("Notification"),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 50.w),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 10.h),
                            child: Text(
                              "Admin Notification",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey, fontSize: 15.sp),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, left: 50.w),
                            child: Text(
                              "10:00 am",
                              style: GoogleFonts.poppins(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 35.h, left: 190.w),
                        child: Row(
                          children: [
                            Text(
                              "10/05/2023",
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp, color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  width: 300.w,
                  height: 123.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white,
                      border: Border.all(width: 2.w, color: Colors.black)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
