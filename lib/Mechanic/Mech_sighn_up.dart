import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Mech_bottomnavigationbar.dart';
import 'mech_login.dart';

class MechSighnUp extends StatefulWidget {
  const MechSighnUp({super.key});

  @override
  State<MechSighnUp> createState() => _MechSighnUpState();
}

class _MechSighnUpState extends State<MechSighnUp> {
  final form_key = GlobalKey<FormState>();

  TextEditingController namectrl = TextEditingController();
  TextEditingController numberctrl = TextEditingController();
  TextEditingController emailctrl = TextEditingController();
  TextEditingController experiencectrl = TextEditingController();
  TextEditingController shopctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  TextEditingController locationctrl = TextEditingController();

  Future<void> user() async {
    FirebaseFirestore.instance.collection("mech_register").add({
      "name": namectrl.text,
      "number": numberctrl.text,
      "email": emailctrl.text,
      "experience":experiencectrl.text,
      "shop":shopctrl.text,
      "password": passwordctrl.text,
      "location":locationctrl.text,
      "Status": 0,
      "profile_path":
      "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    });
    print("Success");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return MechLogin();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Scaffold(
          backgroundColor: Color(0xffCFE2FF),
          body: Form(
              key: form_key,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 130.w),
                        child: Container(
                          width: 140.w,
                          height: 140.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/admin.png"))),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 150.w, top: 10.h),
                        child: Text(
                          "SIGN UP",
                          style: GoogleFonts.poppins(
                              fontSize: 30.sp, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 40.w),
                        child: Text(
                          "Enter Username",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.w, top: 3.h, right: 40.r),
                    child: TextFormField(
                      controller: namectrl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty username";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              10.sp,
                            )),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintText: "Enter username",
                        filled: true,
                      ),

                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 40.w),
                        child: Text(
                          "Enter phone number",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 3.h),
                    child: TextFormField(
                      controller: numberctrl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty number";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              10.sp,
                            )),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintText: "phone number",
                        filled: true,
                      ),

                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 40.w),
                        child: Text(
                          "Enter Your Email",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 3.h),
                    child: TextFormField(
                      controller: emailctrl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty mail";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              10.sp,
                            )),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintText: "Enter mail",
                        filled: true,
                      ),

                    ),
                  ), Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 40.w),
                        child: Text(
                          "Enter your workexperience",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      )
                    ],
                  ),Padding(
                    padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 3.h),
                    child: TextFormField(
                      controller: experiencectrl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty your work experience";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              10.sp,
                            )),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintText: "Enter work experience",
                        filled: true,
                      ),

                    ),
                  ),Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 40.w),
                        child: Text(
                          "Enter your workshop name",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      )
                    ],
                  ),Padding(
                    padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 3.h),
                    child: TextFormField(
                      controller: shopctrl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty your workshop name";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              10.sp,
                            )),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintText: "Enter workshop name",
                        filled: true,
                      ),

                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 40.w),
                        child: Text(
                          "Enter Password",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 3.h),
                    child: TextFormField(
                      controller: passwordctrl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty password";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              10.sp,
                            )),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintText: "Enter password",
                        filled: true,
                      ),
                      obscureText: true,
                    ),
                  ),Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 40.w),
                        child: Text(
                          "Enter location",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 3.h),
                    child: TextFormField(
                      controller: locationctrl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty location";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              10.sp,
                            )),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintText: "Enter location",
                        filled: true,
                      ),
                      obscureText: true,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (form_key.currentState!.validate()) {
                        user();
                      }
                    },
                    child: Padding(
                      padding:
                      EdgeInsets.only(right: 80.r, left: 80.w, top: 50.h),
                      child: Container(
                        child: Center(
                          child: Text(
                            "SIGN UP",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp,
                                color: Colors.white),
                          ),
                        ),
                        width: 200.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Color(0xff2357D9),
                            borderRadius: BorderRadius.circular(10.sp)),
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
