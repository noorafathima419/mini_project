import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Admin_mechanic.dart';

class MechanicDetail extends StatefulWidget {
  const MechanicDetail({super.key});

  @override
  State<MechanicDetail> createState() => _MechanicDetailState();
}

class _MechanicDetailState extends State<MechanicDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: Column(children: [
        Expanded(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("mech_register")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: Text("no data found"));
                }
                var mech = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: mech.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                        child: Card(
                            color: Colors.white,
                            child: Container(
                                width: 200,
                                height: 100,
                                child: Column(children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return AdminMechanic(
                                            id: mech[index].id,
                                          );
                                        },
                                      ));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.w, right: 30.r),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10.h, left: 10.w),
                                                child: Container(
                                                  height: 50.h,
                                                  width: 50.w,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/men.png"))),
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10.h),
                                                        child: Text(
                                                          mech[index]["name"],
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      18.sp),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 50.w),
                                                        child: Text(
                                                          mech[index]["number"],
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(),
                                                        child: Text(
                                                          mech[index]["experience"],
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
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
                                    ),
                                  )
                                ]))));
                  },
                );
              }),
        ),
      ]),
    );
  }
}
