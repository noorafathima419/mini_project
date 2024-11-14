import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Mech_bottomnavigationbar.dart';
import 'Mech_sighn_up.dart';

class MechLogin extends StatefulWidget {
  const MechLogin({super.key});

  @override
  State<MechLogin> createState() => _MechLoginState();
}

class _MechLoginState extends State<MechLogin> {
  @override
  Widget build(BuildContext context) {
    final form_key = GlobalKey<FormState>();
    return Scaffold(
        backgroundColor: Color(0xffCFE2FF),
        body: Form(key: form_key,
          child: ListView(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 100.w, top: 60.h),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/admin.png"))),
                    height: 200.h,
                    width: 200.w,
                    //
                    // color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 150.w, top: 20.h),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40.sp),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.h, left: 30.w),
                  child: Center(
                    child: Text("Enter Username",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20.sp)),
                  ),
                )
              ],
            ),
             Padding(
                padding: EdgeInsets.only(left: 30.w, right: 40.r),
                child: Container(
                  // width: 300.w,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty username";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.pink,
                      hintText: "username",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),


          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 30.w),
                child: Center(
                  child: Text("Enter Password",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 20.sp)),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 40.w),
            child: Container(
              // width: 350.w,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  prefixIconColor: Colors.white,
                  suffixIconColor: Colors.pink,
                  hintText: "Enter Password",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 200.w, top: 20.h),
            child: Row(
              children: [
                Text(
                  "Forget password ?",
                  style: GoogleFonts.poppins(
                      fontSize: 20.sp, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.w, top: 20.h),
                child: InkWell(
                  onTap: () {
                    {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return MechBottomnavigationbar();
                        },
                      ));
                    }
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 25.sp),
                      ),
                    ),
                    width: 200.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.blue),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Text(
                  "Do you have account ?",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return MechSighnUp();
                      },
                    ));
                  }
                },
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigoAccent),
                ),
              )
            ],
          )
        ])
        ));
  }
}
