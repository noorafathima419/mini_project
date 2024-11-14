import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UserMechanicDetailss.dart';

class Usermechniclist extends StatefulWidget {
  const Usermechniclist({super.key});

  @override
  State<Usermechniclist> createState() => _UsermechniclistState();
}

class _UsermechniclistState extends State<Usermechniclist> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( body: Column(
      children:[ Expanded(
        child: InkWell(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return Usermechanicdetailss();
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
                              padding: EdgeInsets.only(top: 10.h, left: 20.w),
                              child: Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Bussiness men.png"))),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.w, top: 1.h),
                                      child: Text(
                                        "+2 year experience",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: Text(
                                        "Battery check",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 19.w),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding:  EdgeInsets.only(left: 10.h),
                                          child: Text(
                                            "Available",
                                            style: GoogleFonts.poppins(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        width: 120.w,
                                        height: 24.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xffCD4949),
                                            borderRadius:
                                            BorderRadius.circular(16.r)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30.w),
                              child: Text(
                                "Name",
                                style: GoogleFonts.poppins(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    width: 350.w,
                    height: 130.h,
                    decoration: BoxDecoration(
                        color: Color(0xffCFE2FF),
                        borderRadius: BorderRadius.circular(20.r)),
                  ),
                );
              },
              itemCount: 5),
        ),
      ),
   ] ),
    );
  }
}
