import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Color(0xffCFE2FF),
        body: ListView(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 10.w),
                child: Container(
                  child: Icon(Icons.arrow_back_ios_sharp),
                ),
              )
            ],
          ),
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
                padding: EdgeInsets.only(top: 70.h, left: 30.w),
                child: Container(
                  child: Center(
                    child: Text(
                      "Enter Username",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          Form(
            key: form_key,
            child: Padding(
              padding: EdgeInsets.only(left: 30.w,right: 40.r),
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
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70.h, left: 30.w),
                child: Container(
                  child: Center(
                    child: Text(
                      "Enter Password",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w,right: 40.w),
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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.w, top: 50.h),
                child: InkWell(
                  onTap: () {
                    if (form_key.currentState!.validate()) {
                      print("object");

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
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.blue),
                  ),
                ),
              )
            ],
          )
        ]));
  }
}
