import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechService extends StatefulWidget {
  const MechService({super.key});

  @override
  State<MechService> createState() => _MechServiceState();
}

class _MechServiceState extends State<MechService> {
  void _showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Color(0xffCFE2FF),
      title: Text("Add Service",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
      content: SizedBox(
        height: 100,
        child: Column(
          children: [
            Container(
              width: 250.w,
              height: 45.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r)),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Column(
            children: [
              Row(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 80.w, top: 10.h),
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        height: 50.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            color: Color(0xff2357D9),
                            borderRadius: BorderRadius.circular(10.sp)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          onPressed: () {
            print("pressed");
            Navigator.of(context).pop(); // Close the dialog
          },
        )
      ],
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: Icon(Icons.arrow_back_ios_sharp),
        title: Padding(
          padding: EdgeInsets.only(left: 80.w),
          child: Text("Service"),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 40.w,top: 50.h),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 70.w, top: 20.h),
                        child: Text(
                          "Tyre puncture service",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 13.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80.w, top: 20.h),
                        child: Icon(
                          Icons.delete,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Container(
                          width: 285.w,
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 120.w, top: 10.h),
                        child: Text(
                          "Engine service",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 13.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80.w, top: 10.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons.delete,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Container(
                          width: 285.w,
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 120.w, top: 10.h),
                        child: Text(
                          "A/c service",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 13.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 105.w, top: 10.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons.delete,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Container(
                          width: 285.w,
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 110.w, top: 10.h),
                        child: Text(
                          "Electric service",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 13.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90.w, top: 1.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons.delete,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xffCFE2FF),
                borderRadius: BorderRadius.circular(15.r),
              ),
              width: 332.w,
              height: 290.h,
            ),
          ),Padding(
            padding: EdgeInsets.only(top: 280.h, left: 280.w),
            child: FloatingActionButton(
              onPressed: () => _showAlertDialog(context),
              shape: CircleBorder(side: BorderSide(width: 1.w)),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
