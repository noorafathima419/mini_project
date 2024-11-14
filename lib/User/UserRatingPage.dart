import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/admin/Add_Admin.dart';

import 'UserMechnicTapbar.dart';

class Userratingpage extends StatefulWidget {
  const Userratingpage({super.key});

  @override
  State<Userratingpage> createState() => _UserratingpageState();
}

class _UserratingpageState extends State<Userratingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffCFE2FF),
          leading: Icon(Icons.arrow_back_ios_sharp),
          title: Padding(
            padding: EdgeInsets.only(left: 80.w),
            child: Text("Your rating"),
          ),
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 20.h),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  child: Image(image: AssetImage("assets/Bussiness men.png")),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 170.w),
                child: Center(
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.w),
                child: Center(
                  child: Text(
                    "2+ Year experience",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 10.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "Available",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff49CD6E),
                      borderRadius: BorderRadius.circular(10.r)),
                  height: 25.h,
                  width: 90.w,
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 10.h),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 18,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, top: 10.h),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.sp,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 10.h),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5, top: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 10),
                                child: Icon(
                                  Icons.star_half,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40, top: 70),
                child: Text(
                  "Add rating",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 90, top: 30),
                child: Icon(
                  Icons.star_border,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 30),
                    child: Icon(
                      Icons.star_border,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 30),
                        child: Icon(
                          Icons.star_border,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5, top: 30),
                            child: Icon(
                              Icons.star_border,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 30),
                                child: Icon(
                                  Icons.star_border,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120.w, top: 100.h),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Usermechnictapbar();
                      },
                    ));
                  },
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
              ),
            ],
          )
        ]));
  }
}
