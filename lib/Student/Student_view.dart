import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_project/admin/Add_Admin.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("STUDENT"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 30.w),
            child: Container(
              child: Center(
                child: Text(
                  "Student name",
                  style: TextStyle(color: Colors.indigo, fontSize: 20.sp),
                ),
              ),
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(width: 2.w, color: Colors.black),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 70.w,top: 50.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "place",
                      style: TextStyle(color: Colors.indigo, fontSize: 20.sp),
                    ),
                  ),
                  height: 50.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(width: 2.w, color: Colors.black),
                  ),
                ),
              ),
            ],
          ), Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 70.w,top: 50.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "Age",
                      style: TextStyle(color: Colors.indigo, fontSize: 20.sp),
                    ),
                  ),
                  height: 50.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(width: 2.w, color: Colors.black),
                  ),
                ),
              ),
            ],
          ), Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 70.w,top: 50.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "Gender",
                      style: TextStyle(color: Colors.indigo, fontSize: 20.sp),
                    ),
                  ),
                  height: 50.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(width: 2.w, color: Colors.black),
                  ),
                ),
              ),
            ],
          // ), floatingActionButton: FloatingActionButton(
          //   shape: CircleBorder(side: BorderSide(width: 1)),
          //   backgroundColor: Colors.white,
          //   onPressed: () => _showAlertDialog(context),
          //   child: Icon(
          //     Icons.add,
          //     size: 40.sp,
          //     color: Colors.black,
          //   ),
          // ),
          )],
      ),
    );
  }
}
