import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Admin_user.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("user_register")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: Text("no data found"));
                }
                var admin = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: admin.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                      child: Card(
                          color: Colors.white,
                          child: Container(
                            width: 200,
                            height: 100,
                            child: Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return AdminUser(
                                            id: admin[index].id,
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
                                              Column(crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        admin[index]["name"],
                                                        style: GoogleFonts
                                                            .poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    15.sp),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    admin[index]
                                                        ["location"],
                                                    style: GoogleFonts
                                                        .poppins(
                                                            fontSize:
                                                                15.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: 30.w),
                                                    child: Text(
                                                      admin[index]
                                                          ["number"],
                                                      style: GoogleFonts
                                                          .poppins(
                                                              fontSize:
                                                                  15.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left:40.w),
                                                        child: Text(
                                                          admin[index]["email"],
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      15.sp,
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
                                    )
                                )
                              ],
                            ),
                          )),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
