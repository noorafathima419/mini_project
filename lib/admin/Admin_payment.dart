import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPayment extends StatefulWidget {
  const AdminPayment({super.key});

  @override
  State<AdminPayment> createState() => _AdminPaymentState();
}

class _AdminPaymentState extends State<AdminPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      appBar: AppBar(
        backgroundColor: Color(0xffE8F1FF),
        leading: CircleAvatar(
          radius: 30.r,
          backgroundImage: AssetImage("assets/profile.jpeg"),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(width: 20.w, height: 20.h);
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.r),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            "Name",
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 190.w),
                          child: Text("11/12/2023"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            "\u20B95455/-",
                            style: GoogleFonts.poppins(
                                fontSize: 15.sp, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ), Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            "Service",
                            style: GoogleFonts.poppins(
                                fontSize: 15.sp, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ), Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            "Mechanic name",
                            style: GoogleFonts.poppins(
                                fontSize: 15.sp, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                width: 350,
                height: 120,
                color: Colors.white,
              ),
            );
          },
          itemCount: 6),
    );
  }
}
