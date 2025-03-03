import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MechNotification extends StatefulWidget {
  const MechNotification({super.key});

  @override
  State<MechNotification> createState() => _MechNotificationState();
}

class _MechNotificationState extends State<MechNotification> {
  String formattedData = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String formattedTime = DateFormat('HH:mm').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:
            FirebaseFirestore.instance.collection("admin_details").doc().get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("user found"));
          }
          if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text("no user data found"));
          }
          final mechh = snapshot.data!.data() as Map<String, dynamic>;

          return ListView.builder(itemCount: mechh.length,
            itemBuilder: (context, index) {
              Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xffCFE2FF),
                  leading: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios_new_sharp)),
                  title: Padding(
                    padding: EdgeInsets.only(left: 80.w),
                    child: Text("Notification"),
                  ),
                ),
                body: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50.h, left: 50.w),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: 10.w, top: 10.h),
                                      child: Text(
                                       mechh[index]["content"],
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontSize: 15.sp),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 10.h, left: 50.w),
                                      child: Text(
                                        mechh[index]["Time"],
                                        style: GoogleFonts.poppins(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 35.h, left: 190.w),
                                  child: Row(
                                    children: [
                                      Text(
                                        mechh[index]["Date"],
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            width: 300.w,
                            height: 123.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.white,
                                border:
                                Border.all(width: 2.w, color: Colors.black)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            });
        });
  }
}
