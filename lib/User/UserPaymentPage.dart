import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/Mechanic/Mech_rating.dart';
import 'package:mini_project/admin/Add_Admin.dart';
import 'package:mini_project/admin/Admin_home.dart';
import 'package:mini_project/admin/Admin_mechanic.dart';
import 'package:mini_project/admin/login.dart';

class Userpaymentpage extends StatefulWidget {
  const Userpaymentpage({super.key});

  @override
  State<Userpaymentpage> createState() => _UserpaymentpageState();
}

class _UserpaymentpageState extends State<Userpaymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 180, top: 320),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/tick.png"))),
                ),
              )
            ],
          ),
          Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 160, top: 30),
                  child: Text(
                    "Successful",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 90, top: 300),
              child: Container(
                child: Center(
                  child: Text(
                    "Back to home page",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2357D9)),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
