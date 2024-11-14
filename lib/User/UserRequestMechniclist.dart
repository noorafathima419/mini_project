import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UserMerchnicBill.dart';

class Userrequestmechniclist extends StatefulWidget {
  const Userrequestmechniclist({super.key});

  @override
  State<Userrequestmechniclist> createState() => _UserrequestmechniclistState();
}

class _UserrequestmechniclistState extends State<Userrequestmechniclist> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(
      children:[ Expanded(
        child: InkWell(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return Usermerchnicbill();
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
                              padding: EdgeInsets.only(top: 40.h, left: 20.w),
                              child: Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                   ),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: 10.w, top: 10.h),
                                      child: Text(
                                        "Fuel leaking",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.w),
                                      child: Text(
                                        "Date",
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
                                      padding: EdgeInsets.only(left: 115.w),
                                      child: Text(
                                        "Time",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 19.w),
                                      child: Row(
                                        children: [
                                          Container(child: Center(
                                            child: Text(
                                              "Payment Success",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                            width: 100.w,
                                            height: 30.h,
                                            decoration: BoxDecoration(
                                                color: Color(0xff007B23),
                                                borderRadius:
                                                BorderRadius.circular(10.r)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: Text(
                                        "Place",
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
                        color: Color(0xffCFE2FF),
                        borderRadius: BorderRadius.circular(20.r)),
                  ),
                );
              },
              itemCount: 4),
        ),
      ),
  ]  ),

        );
  }
}
