import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Usermechanicdetailss extends StatefulWidget {
  const Usermechanicdetailss({
    super.key,
    required this.id,
    required this.name,
    required this.number,
    required this.experience,
    required this.profile,
  });
  final id;
  final name;
  final number;
  final experience;
  final profile;

  @override
  State<Usermechanicdetailss> createState() => _UsermechanicdetailssState();
}

class _UsermechanicdetailssState extends State<Usermechanicdetailss> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user_id();
  }
  Future<void> user_id() async {
    SharedPreferences data1 = await SharedPreferences.getInstance();
    setState(() {
      id = data1.getString("user_id");
      print(id);


    });
  }


  var id;

  String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String formattedTime = DateFormat('HH:mm').format(DateTime.now());

  String _selectedItem = 'fuel leaking';

  final List<String> _options = [
    'fuel leaking',
    'battery check',
    'break pad replacement'
  ];

  Future<void> request(
    name,
    number,
    experience,
    profile,
  ) async {
    FirebaseFirestore.instance.collection("Request").add({
      "work": _selectedItem,
      "location": placectrl.text,
      "user_profile": profile,
      "mechanic_profile": widget.id,
      "user_id": id,
      "mech_id": widget.id,
      "mech_name": widget.name,
      "user_name": name,
      "Date": formattedDate,
      "Time": formattedTime,
      "number": number,
      "reason": 0,
      "Payment": 0,
      "Status": 0,
      "Rating": 0,
      "work_amount":0,
    });
    print("Successfully");
  }

  final placectrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffCFE2FF),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),
          title: Padding(
            padding: EdgeInsets.only(left: 80.w),
            child: Text("Needed sevice"),
          ),
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("user_register")
                .doc(id)
                .get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text("user found"));
              }
              if (!snapshot.hasData || snapshot.data == null) {
                return Center(child: Text("no user data found"));
              }
              final user = snapshot.data!.data() as Map<String, dynamic>;
              return ListView(children: [
                Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 150.w, top: 20.h),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/Bussiness men.png")),
                              borderRadius: BorderRadius.circular(12.r)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 170.w),
                        child: Text(
                          widget.name,
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 140.w, top: 30.h),
                        child: Text(
                          widget.number,
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 170.w),
                        child: Text(
                          widget.experience,
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 150.w, top: 10.h),
                        child: Container(
                          child: Center(
                            child: Text(
                              "Available",
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff49CD6E),
                              borderRadius: BorderRadius.circular(10.r)),
                          height: 25.h,
                          width: 90.w,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40.w, top: 30.h),
                        child: Text(
                          "Add needed service",
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.w, top: 20.h),
                    child: Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 270.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: Color(0xffCFE2FF)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: DropdownButton<String>(
                              value: _selectedItem,
                              items: _options.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedItem = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45.h, left: 50.w),
                    child: Row(
                      children: [
                        Text(
                          "place",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 16.sp),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: 40.r, left: 40.w, top: 20.h),
                    child: Column(children: [
                      TextFormField(
                        controller: placectrl,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty password";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.sp,
                              ),
                              borderSide: BorderSide.none),
                          prefixIconColor: Colors.white,
                          suffixIconColor: Colors.white,
                          hintText: "Enter your place",
                          filled: true,
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100, top: 150),
                    child: InkWell(
                      onTap: () {
                        request(user["name"], user["number"],
                            user["experience"], user["profile_path"]);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "Request",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ),
                        height: 50,
                        width: 212,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff2357D9)),
                      ),
                    ),
                  )
                ]),
              ]
              );
            }
            )
    );
  }
}
