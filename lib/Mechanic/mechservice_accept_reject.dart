import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Mech_bottomnavigationbar.dart';

class MechserviceAcceptReject extends StatefulWidget {
  const MechserviceAcceptReject(
      {super.key,
      required this.id,
      required this.name,
      required this.Date,
      required this.time,
      required this.number,
      required this.problem,
      required this.location});
  final id;
  final name;
  final Date;
  final time;
  final number;
  final problem;
  final location;

  @override
  State<MechserviceAcceptReject> createState() =>
      _MechserviceAcceptRejectState();
}

class _MechserviceAcceptRejectState extends State<MechserviceAcceptReject> {
  Future<void> select_accept() async {
    FirebaseFirestore.instance
        .collection("Request")
        .doc(widget.id)
        .update({"Status": 1});
  }

  Future<void> select_reject() async {
    FirebaseFirestore.instance
        .collection("Request")
        .doc(widget.id)
        .update({"Status": 2});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("Request")
              .doc(widget.id)
              .get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text("User not found"));
            }
            if (!snapshot.hasData || snapshot.data == null) {
              return Center(child: Text("No data found"));
            }
            final mech_datas = snapshot.data!.data() as Map<String, dynamic>;
            return Column(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 50.h),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return MechBottomnavigationbar();
                                      },
                                    ));
                                  },
                                  icon: Icon(Icons.arrow_back_ios_new_sharp))
                            ],
                          ),
                          Column(
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
                                      "${widget.name}",
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
                                    padding:
                                        EdgeInsets.only(left: 10.w, top: 50.h),
                                    child: Text(
                                      "${widget.problem}",
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
                                    padding:
                                        EdgeInsets.only(left: 10.w, top: 10.h),
                                    child: Text(
                                      "${widget.location}",
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
                                    padding:
                                        EdgeInsets.only(left: 10.w, top: 10.h),
                                    child: Text(
                                      "${widget.Date}",
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
                                    padding:
                                        EdgeInsets.only(left: 10.w, top: 10.h),
                                    child: Text(
                                      "${widget.time}",
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
                                    padding:
                                        EdgeInsets.only(left: 10.w, top: 10.h),
                                    child: Text(
                                      "${widget.number}",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                              mech_datas["Status"] == 0
                                  ? Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 40.w, top: 150.h),
                                          child: InkWell(
                                            onTap: () {
                                              select_accept();
                                            },
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Accept",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 18.sp),
                                                ),
                                              ),
                                              width: 142.w,
                                              height: 50.h,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff73ABFF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.r)),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.w, top: 150.h),
                                              child: InkWell(
                                                onTap: () {
                                                  select_reject();
                                                },
                                                child: Container(
                                                  child: Center(
                                                    child: Text(
                                                      "reject",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18.sp),
                                                    ),
                                                  ),
                                                  width: 142.w,
                                                  height: 50.h,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffFF9F9D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.r)),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  : mech_datas["Status"] == 1
                                      ? Padding(
                                          padding: EdgeInsets.only(
                                              left: 40.w, top: 150.h),
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                "Accepted",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18.sp),
                                              ),
                                            ),
                                            width: 142.w,
                                            height: 50.h,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(5.r)),
                                          ),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.only(
                                              left: 40.w, top: 150.h),
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                "Rejected",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18.sp),
                                              ),
                                            ),
                                            width: 142.w,
                                            height: 50.h,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(5.r)),
                                          ),
                                        ),
                            ],
                          )
                        ],
                      ),
                      height: 826.h,
                      width: 370.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  )
                ],
              ),
            ]);
          }),
    );
  }
}
