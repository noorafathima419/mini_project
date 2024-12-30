import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'MechnicFailedPage.dart';
import 'UserMerchnicBill.dart';

class Userrequestmechniclist extends StatefulWidget {
  const Userrequestmechniclist({super.key});

  @override
  State<Userrequestmechniclist> createState() => _UserrequestmechniclistState();
}

class _UserrequestmechniclistState extends State<Userrequestmechniclist> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user_data();
  }

  Future<void> user_data() async {
    SharedPreferences user_data = await SharedPreferences.getInstance();
    setState(() {
      userid = user_data.getString("userid");
    });
    print("success");
  }

  var userid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("Request")
                      .where("user_id", isEqualTo: userid)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (!snapshot.hasData) {
                      return Center(child: Text("no data found"));
                    }
                    var mechh = snapshot.data!.docs;

                    return ListView.builder(
                      itemCount: mechh.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.w,
                          ),
                          child: Card(
                            color: Color(0xffCFE2FF),
                            child: InkWell(
                              onTap: () {
                                mechh[index]["Payment"] == 5
                                    ? ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                        content: Text('Payment completed'),
                                        backgroundColor: Colors.green,
                                      ))
                                    : mechh[index]["Payment"] == 4
                                    ? Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) {
                                    return Mechnicfailedpage(id:mechh[index].id,name:mechh[index]["mech_name"]

                                    );
                                  },
                                ))
                                        : mechh[index]["Payment"] == 3
                                            ? Navigator.of(context)
                                                .push(MaterialPageRoute(
                                                builder: (context) {
                                                  return Usermerchnicbill(id:mechh[index].id,name:mechh[index]["mech_name"]

                                                  );
                                                },
                                              ))
                                            : mechh[index]["Status"] == 2
                                                ? ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                    content: Text(
                                                        'Request Rejected'),
                                                    backgroundColor: Colors.red,
                                                  ))
                                                : mechh[index]["Status"] == 1
                                                    ? ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                        content: Text(
                                                            'Request Accepted'),
                                                        backgroundColor:
                                                            Colors.red,
                                                      ))
                                                    : ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                        content: Text(
                                                            'Request Pending'),
                                                        backgroundColor:
                                                            Colors.red,
                                                      ));
                              },
                              child: Container(
                                width: 350.w,
                                height: 150.h,
                                child: Row(
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          mechh[index]["work"],
                                          style: GoogleFonts.poppins(
                                              fontWeight:
                                                  FontWeight.w500,
                                              fontSize: 16.sp),
                                        ),
                                        Text(
                                          mechh[index]["Date"],
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.sp,
                                              fontWeight:
                                                  FontWeight.w500),
                                        ),
                                        Text(
                                          mechh[index]["Time"],
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.sp,
                                              fontWeight:
                                                  FontWeight.w500),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.w),
                                          child: Row(
                                            children: [
                                              mechh[index]["Payment"] ==
                                                      5
                                                  ? Container(
                                                      child: Center(
                                                        child: Text(
                                                          "Paid",
                                                          style: GoogleFonts.poppins(color: Colors.white,
                                                              fontSize:
                                                                  16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                      width: 100.w,
                                                      height: 30.h,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xff007B23),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.r)),
                                                    )
                                                  : mechh[index][
                                                              "Payment"] ==
                                                          4
                                                      ? Container(
                                                          child: Text(
                                                            "failed",
                                                            style: GoogleFonts.poppins(
                                                                fontSize: 16
                                                                    .sp,
                                                                fontWeight:
                                                                    FontWeight.w500),
                                                          ),
                                                          width: 100.w,
                                                          height: 30.h,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                  0xff007B23),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      10.r)),
                                                        )
                                                      : mechh[index][
                                                                  "Payment"] ==
                                                              3
                                                          ? Container(
                                                              child:
                                                                  Text(

                                                                "pay",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        16.sp,
                                                                    fontWeight: FontWeight.w500),
                                                              ),
                                                              width:
                                                                  100.w,
                                                              height:
                                                                  30.h,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .yellow,
                                                                  borderRadius:
                                                                      BorderRadius.circular(10.r)),
                                                            )
                                                          : mechh[index]
                                                                      [
                                                                      "Status"] ==
                                                                  2
                                                              ? Container(
                                                                  child:
                                                                      Text(
                                                                    "Accepeted",
                                                                    style:
                                                                        GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w500),
                                                                  ),
                                                                  width:
                                                                      100.w,
                                                                  height:
                                                                      30.h,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(0xff007B23),
                                                                      borderRadius: BorderRadius.circular(10.r)),
                                                                )
                                                              : mechh[index]["Status"] ==
                                                                      1
                                                                  ? Container(
                                                                      child: Text(
                                                                        "Reject",
                                                                        style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w500),
                                                                      ),
                                                                      width: 100.w,
                                                                      height: 30.h,
                                                                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10.r)),
                                                                    )
                                                                  : Container(
                                                                      child: Text(
                                                                        "Pending",
                                                                        style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w500),
                                                                      ),
                                                                      width: 100.w,
                                                                      height: 30.h,
                                                                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10.r)),
                                                                    )
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.w),
                                              child: Text(
                                                mechh[index]["location"],
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
