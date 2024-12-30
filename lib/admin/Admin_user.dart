import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottumNavigationBar.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key, required this.id});
  final id;

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
  Future<void> select_accept() async {
   setState(() {
     FirebaseFirestore.instance
         .collection("user_register")
         .doc(widget.id)
         .update({"Status": 1});
   });
  }

  Future<void> select_reject() async {
   setState(() {
     FirebaseFirestore.instance
         .collection("user_register")
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
                .collection("user_register")
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
              final User_datas = snapshot.data!.data() as Map<String, dynamic>;

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
                                          return BottomnavigathionbarWidgets();
                                        },
                                      ));
                                    },
                                    icon: Icon(Icons.arrow_back_ios_new_sharp))
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 110.w),
                                        child: CircleAvatar(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xffE8F1FF),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/men.png"),fit: BoxFit.cover)),
                                            height: 80.h,
                                            width: 80.w,
                                          ),
                                          radius: 70.r,
                                          backgroundColor: Color(0xffE8F1FF),
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: 120.w, top: 20.h),
                                      child: Text(
                                        User_datas["name"] ?? "No data found",
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
                                      EdgeInsets.only(left: 130.w, top: 10.h),
                                      child: Text(
                                        User_datas["location"] ?? "no data found",
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
                                      EdgeInsets.only(top: 20.h, left: 40.w),
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
                                              User_datas["name"],
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
                                      EdgeInsets.only(top: 20.h, left: 40.w),
                                      child: Text(
                                        "phone number",
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
                                              User_datas["number"],
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
                                      EdgeInsets.only(top: 20.h, left: 40.w),
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
                                              User_datas["email"],
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
                                ),User_datas["Status"]==0?
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: 40.w, top: 150.h),
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
                                              left: 10.w, top: 150.h),
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
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 18.sp),
                                                ),
                                              ),
                                              width: 142.w,
                                              height: 50.h,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffFF9F9D),
                                                  borderRadius:
                                                  BorderRadius.circular(5.r)),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ):User_datas["Status"]==1? Padding(
                                  padding:
                                  EdgeInsets.only(left: 40.w, top: 150.h),
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
                                ): Padding(
                                  padding:
                                  EdgeInsets.only(left: 40.w, top: 150.h),
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
              ]
              );
            }
            ),
    );
  }
}