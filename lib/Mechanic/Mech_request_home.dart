import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_status_complited.dart';

class MechRequestHome extends StatefulWidget {
  const MechRequestHome({super.key});

  @override
  State<MechRequestHome> createState() => _MechRequestHomeState();
}

class _MechRequestHomeState extends State<MechRequestHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Expanded(
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("Request")
                    .where("Status", isEqualTo: 1)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (!snapshot.hasData) {
                    return Center(child: Text("no data found"));
                  }
                  var mechservice = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: mechservice.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return MechStatusComplited(
                                    id: mechservice[index].id,
                                    work: mechservice[index]["work"],
                                    name: mechservice[index]["user_name"],
                                    date: mechservice[index]["Date"],
                                    time: mechservice[index]["Time"],
                                    place: mechservice[index]["location"]);
                              },
                            ));
                          },
                          child: Card(
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.w),
                                        child: Container(
                                          height: 50.h,
                                          width: 50.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/boss.png"))),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 60.w, top: 10.h),
                                                child: Text(
                                                  mechservice[index]["work"],
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18.sp),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20.w),
                                                child: Text(
                                                  mechservice[index]["Date"],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 30.w),
                                                    child: Container(
                                                      child: Center(
                                                        child: Text(
                                                          "Peyment pending",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.r),
                                                          color: Color(
                                                              0xffCD4949)),
                                                      width: 107.w,
                                                      height: 18,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20.w),
                                                child: Text(
                                                  mechservice[index]["Time"],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 30.w),
                                                child: Text(
                                                  mechservice[index]
                                                      ["user_name"],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 30.w),
                                                child: Text(
                                                  mechservice[index]
                                                      ["location"],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
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
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: Color(0xffCFE2FF)),
                            ),
                          ));
                    },
                  );
                }),
          ),
        ));
  }
}
