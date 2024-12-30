import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Mech_edit_profile.dart';
import 'mech_tapbar.dart';

class MechProfile extends StatefulWidget {
  const MechProfile({super.key});

  @override
  State<MechProfile> createState() => _MechProfileState();
}

class _MechProfileState extends State<MechProfile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mech_id();
  }
  Future<void> mech_id() async {
    SharedPreferences data1 = await SharedPreferences.getInstance();
    setState(() {
      id = data1.getString("mechid");


    });
  }


  var id;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(
          0xffCFE2FF,
        ),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),

        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("mech_register")
                .doc(id)
                .get(),
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
              final mech = snapshot.data!.data() as Map<String, dynamic>;

              return Column(
                children: [Row(children: [
                   Padding(
                            padding: EdgeInsets.only(
                              left: 140.w,
                            ),
                            child: CircleAvatar(
                              child: Image(
                                image: AssetImage("assets/men.png"),
                                fit: BoxFit.cover,
                              ),
                              radius: 70.r,
                            ),
                          ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.w, top: 10.h),
                            child: Text(
                              "Name",
                              style: GoogleFonts.poppins(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h, left: 20.w),
                              child: Text(
                                mech["name"] ?? "no data found",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            height: 50.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.w),
                            child: Text(
                              "Username",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h, left: 20.w),
                              child: Text(
                                mech["username"] ?? "no data found",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            height: 50.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 30.w,
                            ),
                            child: Text(
                              "Phone number",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h, left: 20.w),
                              child: Text(
                                mech["number"] ?? "no data found",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            height: 50.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 30.w,
                            ),
                            child: Text(
                              "Email address",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h, left: 20.w),
                              child: Text(
                                mech["email"] ?? "no data found",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            height: 50.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 30.w,
                            ),
                            child: Text(
                              "Work experience",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h, left: 20.w),
                              child: Text(
                                mech["experience"] ?? "no data found",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            height: 50.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.w),
                            child: Text(
                              "Work shop name",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h, left: 20.w),
                              child: Text(
                                mech["shopname"] ?? "no data found",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            height: 50.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.w),
                            child: Text(
                              "Your location",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 20.w),
                              child: Text(
                                mech["location"] ?? "no data found",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            height: 50.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 90, top: 100),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return MechTapbar();
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
                                    fontSize: 20),
                              ),
                            ),
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff2357D9)),
                          ),
                        ),
                      ),


                ],

               )
              ])]
              );
            }
     )
    );
  }
}
