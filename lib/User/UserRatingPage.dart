import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/admin/Add_Admin.dart';

import 'UserMechnicTapbar.dart';

class Userratingpage extends StatefulWidget {
  const Userratingpage({super.key, required this.id, required this.name});

  final id;
  final name;
  @override
  State<Userratingpage> createState() => _UserratingpageState();
}

class _UserratingpageState extends State<Userratingpage> {
  double _rating = 1;
  Future<void> request() async {
    FirebaseFirestore.instance
        .collection("Request")
        .doc(widget.id)
        .update({"Rating": _rating});
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return Usermechnictapbar();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffCFE2FF),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_sharp)),
          title: Padding(
            padding: EdgeInsets.only(left: 80.w),
            child: Text("Your rating"),
          ),
        ),
        body: ListView(children: [
          Column(children: [
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
                      widget.name,
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
            RatingBar.builder(
              initialRating: 1,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              onRatingUpdate: (rating) {
                _rating = rating;
                print(_rating);
              },
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120.w, top: 100.h),
                  child: InkWell(
                    onTap: () {
                      request();
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
          ]),
        ]));
  }
}
