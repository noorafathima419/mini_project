import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MechService extends StatefulWidget {
  const MechService({super.key});

  @override
  State<MechService> createState() => _MechServiceState();
}

class _MechServiceState extends State<MechService> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    SharedPreferences mech_data = await SharedPreferences.getInstance();
    setState(() {
      Mech_id = mech_data.getString("mech_id");
      print("$Mech_id//////////////////////////////////////");
    });
  }

  var Mech_id;

  final servicectrl = TextEditingController();

  Future<void> service() async {
    FirebaseFirestore.instance
        .collection("Service")
        .add({"Service": servicectrl.text, "mechanic_id": Mech_id});
    Navigator.pop(context);
  }

  void _showAlertDialog(BuildContext context) {
    // Set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Color(0xffCFE2FF),
      title: Text(
        "Add service",
        style:
        GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20.sp),
      ),
      content: SizedBox(
        height: 200.h,
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
              child: TextFormField(
                controller: servicectrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r)),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            InkWell(
              onTap: () {
                service();
              },
              child: Container(
                height: 50.h,
                width: 150.w,
                decoration: BoxDecoration(
                    color: Color(0xff2357D9),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Center(
                    child: Text(
                      "Add",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0XFFCFE2FF),
        automaticallyImplyLeading: false,

        centerTitle: true,
        title: Text(
          "Service",
          style:
          GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20.sp),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("Service")
            .where("mechanic_id", isEqualTo: Mech_id)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child:
                CircularProgressIndicator()); //loading action , shows that data is
          }

          if (!snapshot.hasData) {
            // to check if there is data if not it returns the text
            return Center(child: Text("No data found"));
          }

          var service = snapshot.data!.docs;

          return ListView.builder(
            itemCount: service.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child: Container(
                          height: 60.h,
                          width: 330.w,
                          decoration: BoxDecoration(
                              color: Color(0XFFCFE2FF),
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 40.w,
                                    ),
                                    child: Text(
                                      service[index]["Service"],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15.sp),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(right: 30.w),
                                      child: IconButton(
                                        onPressed: () {
                                          FirebaseFirestore.instance
                                              .collection("Service")
                                              .doc(service[index].id)
                                              .delete();
                                        },
                                        icon: Icon(
                                          CupertinoIcons.trash_fill,
                                          size: 15,
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(side: BorderSide(width: 1)),
        backgroundColor: Colors.white,
        onPressed: () => _showAlertDialog(context),
        child: Icon(
          Icons.add,
          size: 40.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}