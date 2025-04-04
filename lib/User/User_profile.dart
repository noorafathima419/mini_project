import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'UserMechnicTapbar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user_id();
  }
  Future<void> user_id() async {
    SharedPreferences data1 = await SharedPreferences.getInstance();
    setState(() {
      id = data1.getString("user_id");


    });
  }


  var id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("user_register")
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
              final user = snapshot.data!.data() as Map<String, dynamic>;
              return ListView(children: [
                Row(
                  children: [
                    Center(
                      child: Padding(
                          padding: EdgeInsets.only(left: 140.w, top: 50.h),
                          child: CircleAvatar(
                            radius: 50.r,
                            backgroundImage: AssetImage("assets/profile.jpeg"),
                          )),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 160.w, top: 10.h),
                        child: Text(
                          "Name",
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 70.h),
                        child: Text(
                          "Enter your name",
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
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
                            user["name"]?? "no data found",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ),
                        height: 60.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xffCFE2FF)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "Phone number",
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
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
                          child: Text(user["number"]?? "no data found",

                            style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ),
                        height: 60.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xffCFE2FF)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text("Enter your email",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
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
                            user["email"],
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ),
                        height: 60.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xffCFE2FF)),
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
                            return Usermechnictapbar();
                          },
                        ));
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "Done",
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
                ])
              ]);
            }));
  }
}
