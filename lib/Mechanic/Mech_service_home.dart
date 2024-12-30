import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Mech_bottomnavigationbar.dart';
import 'mechservice_accept_reject.dart';

class MechServiceHome extends StatefulWidget {
  const MechServiceHome({super.key});

  @override
  State<MechServiceHome> createState() => _MechServiceHomeState();
}

class _MechServiceHomeState extends State<MechServiceHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mech_data();
  }

  Future<void> mech_data() async {
    SharedPreferences mech_data = await SharedPreferences.getInstance();
    setState(() {
      mechid = mech_data.getString("mech_id");
    });
    print("success");
  }

  var mechid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("Request")
                  // .where("mech_id", isEqualTo: mechid)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: Text("no data found"));
                }
                var use = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: use.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.r),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return MechserviceAcceptReject(
                                id: use[index].id,
                                name: use[index]["user_name"],
                                problem: use[index]["work"],
                               location:use[index]["location"],
                                Date: use[index]["Date"],
                                time: use[index]["Time"],
                                number: use[index]["number"],
                              );
                            },
                          ));
                        },
                        child: Card(
                          child: Column(children: [
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 20.h, left: 20.w),
                                        child: Container(
                                          height: 50.h,
                                          width: 50.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/boss.png"))),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 50.w, top: 10.h),
                                                child: Text(
                                                  use[index]["work"],
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18.sp),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 100.w),
                                                child: Text(
                                                  use[index]["Date"],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 100.w),
                                                child: Text(
                                                  use[index]["Time"],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 100.w),
                                                child: Text(
                                                  use[index]["location"],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30.w),
                                        child: Text(
                                          use[index]["user_name"],
                                          style: GoogleFonts.poppins(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              width: 380.w,
                              height: 130.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffCFE2FF),
                                  borderRadius: BorderRadius.circular(20.r)),
                            ),
                          ]),
                        ),
                      ),
                    );
                  },
                );
              }),
        )
      ]),
    );
  }
}
