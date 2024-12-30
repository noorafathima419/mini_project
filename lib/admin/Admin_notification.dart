import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Add_Admin.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      appBar: AppBar(
        backgroundColor: Color(0xffE8F1FF),
        leading: CircleAvatar(
          radius: 30.r,
          backgroundImage: AssetImage("assets/profile.jpeg"),
        ),
      ),


      body: Column(
        children: [Expanded(
          child:  StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("admin_details")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: Text("no data found"));
                }
                var admin = snapshot.data!.docs;
                return ListView.separated(
                    itemCount: admin.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 10,
                        height: 10,
                      );
                    },
               separatorBuilder: (context, index) {
                       return Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.r),
                  child: Container(width:200 .w,height: 200.h,
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(title: Text(
                            admin[index]["Heading"],
                            style: TextStyle(fontSize: 20.sp),
                          ) ,subtitle: Text(
                            admin[index]["content"],
                            style: TextStyle(fontSize: 20.sp),
                          ),trailing:  IconButton(
                        onPressed: () {
                                        FirebaseFirestore.instance
                      .collection("admin_details")
                      .doc(admin[index].id)
                      .delete();
                                        },
                                          icon: Icon(Icons.delete),),
                          ),


                        ],
                      ),
                    ),
                  ),
                       );
               },
                );
              }),
        ),
          Padding(
            padding: EdgeInsets.only(left: 260.w),
            child: FloatingActionButton(
              shape: CircleBorder(side: BorderSide(width: 1.w)),
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AddAdmin();
                  },
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}