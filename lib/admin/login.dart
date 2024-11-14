import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottumNavigationBar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Form(
          key: form_key,
          child: ListView(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 100.h, left: 130.w),
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
                    padding: EdgeInsets.only(left: 150.w, top: 30.h),
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.poppins(
                          fontSize: 30.sp, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 40.w),
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
                padding: EdgeInsets.only(left: 40.w, top: 20.h, right: 40.r),
                child: TextFormField(
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
                  obscureText: true,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 40.w),
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
                padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 20.h),
                child: TextFormField(
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
              ),
              InkWell(
                onTap: () {
                  if (form_key.currentState!.validate()) {
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return BottomnavigathionbarWidgets();
                      },
                    ));
                  }
                  ;
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 130.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 100.w, top: 10.h),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Colors.white),
                      ),
                    ),
                    width: 200.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                ),
              )
            ],
          )),
    );

  }
}
