import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UserMechanicDetailss.dart';

class Usermechniclist extends StatefulWidget {
  const Usermechniclist({super.key});

  @override
  State<Usermechniclist> createState() => _UsermechniclistState();
}

class _UsermechniclistState extends State<Usermechniclist> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("mech_register")
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (!snapshot.hasData) {
                return Center(child: Text("no data found"));
              }
              var user = snapshot.data!.docs;
              return ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                      child: Card(
                          color: Colors.white,
                          child: Container(
                              width: 200,
                              height: 130,
                              child: Column(children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return Usermechanicdetailss(
                                              id: user[index].id,
                                              name: user[index]["name"],
                                              number: user[index]["number"],
                                              experience: user[index]
                                                  ["experience"],profile:user[index]["profile_path"]);
                                        },
                                      ));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.w, right: 30.r),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10.h, left: 20.w),
                                                  child: Container(
                                                    height: 80.h,
                                                    width: 80.w,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/Bussiness men.png"))),
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 1.w,
                                                                  top: 1.h),
                                                          child: Text(
                                                            user[index]
                                                                ["experience"],
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        14.sp),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 19.w),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.w),
                                                  child: Text(
                                                    user[index]["name"],
                                                    style:
                                                        GoogleFonts.poppins(),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ))
                              ]))));
                },
              );
            }),
      ),
    ]));
  }
}
