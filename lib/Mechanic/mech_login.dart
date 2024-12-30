import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Mech_bottomnavigationbar.dart';
import 'Mech_sighn_up.dart';
import 'mech_tapbar.dart';

class MechLogin extends StatefulWidget {
  const MechLogin({super.key});

  @override
  State<MechLogin> createState() => _MechLoginState();
}

class _MechLoginState extends State<MechLogin> {
  final form_key = GlobalKey<FormState>();

  final mailctrl = TextEditingController();
  final passwordctrl = TextEditingController();
  String id = "";

  void Mech_login() async {
    final mech = await FirebaseFirestore.instance
        .collection("mech_register")
        .where("email", isEqualTo: mailctrl.text)
        .where("password", isEqualTo: passwordctrl.text)
        .get();

    if (mech.docs.isNotEmpty) {
      id = mech.docs[0].id;
      print("$id");
      SharedPreferences mech_data = await SharedPreferences.getInstance();
      mech_data.setString("mechanic_id", id);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return MechTapbar();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid e-mail or password!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xffCFE2FF),
        body: Form(
            key: form_key,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 150.w, top: 20.h),
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          fontSize: 25.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.h, left: 30.w),
                    child: Text("Enter e-mail",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20.sp)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 40.r),
                child: Container(
                  // width: 300.w,
                  child: TextFormField(
                    controller: mailctrl,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty e-mail";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.pink,
                      hintText: "email",
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
                    child: Text("Enter Password",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 20.sp)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 40.w),
                child: TextFormField(
                  controller: passwordctrl,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty password";
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    prefixIconColor: Colors.white,
                    suffixIconColor: Colors.pink,
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 235.w),
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100.w, top: 20.h),
                    child: InkWell(
                      onTap: () {
                        if (form_key.currentState!.validate()) {
                          Mech_login();
                        }
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "LOGIN",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.w, top: 20.h),
                    child: Text(
                      "Do you have account ?",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 5.w),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return MechSighnUp();
                              },
                            ));
                          },
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                              color: Color(0xff2357D9),
                            ),
                          )))
                ],
              ),
            ]
            ),
        )
    );
  }
}
