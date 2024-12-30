import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottumNavigationBar.dart';

class AdminMechanic extends StatefulWidget {
  const AdminMechanic({super.key, required this.id});
  final id;

  @override
  State<AdminMechanic> createState() => _AdminMechanicState();
}

class _AdminMechanicState extends State<AdminMechanic> {
  Future<void> select_accept() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("mech_register")
          .doc(widget.id)
          .update({"Status": 1});
    });
  }

  Future<void> select_reject() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("mech_register")
          .doc(widget.id)
          .update({"Status": 2});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffCFE2FF,
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("mech_register")
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
            final Mech_datas = snapshot.data!.data() as Map<String, dynamic>;

            return ListView(children: [
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
                                        return BottomnavigathionbarWidgets();
                                      },
                                    ));
                                  },
                                  icon: Icon(Icons.arrow_back_ios_new_sharp))
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: CircleAvatar(
                                    radius: 70.r,
                                    backgroundColor: Color(0xffE8F1FF),
                                    backgroundImage:
                                    AssetImage("assets/men.png"),
                                  )),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 160.w, top: 2.h),
                                    child: Text(
                                      Mech_datas["name"]??"no data",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 160.w, top: 1.h),
                                    child: Text(
                                      Mech_datas["location"]??"no data",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Username",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Mech_datas["name"]??"no data",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      height: 50.h,
                                      width: 286.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE8F1FF),
                                          borderRadius:
                                          BorderRadius.circular(10.r)),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Phone number",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Mech_datas["number"]??"no data",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      height: 50.h,
                                      width: 286.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE8F1FF),
                                          borderRadius:
                                          BorderRadius.circular(10.r)),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "email address",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Mech_datas["email"]??"no data",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      height: 50.h,
                                      width: 286.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE8F1FF),
                                          borderRadius:
                                          BorderRadius.circular(10.r)),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Work experience",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Mech_datas["experience"]??"no data",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      height: 50.h,
                                      width: 286.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE8F1FF),
                                          borderRadius:
                                          BorderRadius.circular(10.r)),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Work shop name",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Mech_datas["shopname"]??"no data",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      height: 50.h,
                                      width: 286.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE8F1FF),
                                          borderRadius:
                                          BorderRadius.circular(10.r)),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 5.h, left: 40.w),
                                    child: Text(
                                      "Your Location",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Mech_datas["location"]??"no data",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      height: 50.h,
                                      width: 286.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE8F1FF),
                                          borderRadius:
                                          BorderRadius.circular(10.r)),
                                    ),
                                  )
                                ],
                              ),Mech_datas["Status"]==0?
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 40.w, top: 15.h),
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
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.sp),
                                          ),
                                        ),
                                        width: 142.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xff73ABFF),
                                            borderRadius:
                                            BorderRadius.circular(5.r)),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.w, top: 24.h),
                                        child: InkWell(
                                          onTap: () {
                                            select_reject();
                                          },
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                "reject",
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
                                                color: Color(0xffFF9F9D),
                                                borderRadius:
                                                BorderRadius.circular(
                                                    5.r)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ):Mech_datas["Status"]==1? Padding(
                                padding: EdgeInsets.only(
                                    left: 40.w, top: 15.h),
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
                                      color:Colors.green,
                                      borderRadius:
                                      BorderRadius.circular(5.r)),
                                ),
                              ): Padding(
                                padding: EdgeInsets.only(
                                    left: 40.w, top: 15.h),
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
                      height: 840.h,
                      width: 370.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  )
                ],
              ),
            ]);
          }));
  }
}