import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Userratingpage extends StatefulWidget {
  const Userratingpage({super.key});

  @override
  State<Userratingpage> createState() => _UserratingpageState();
}

class _UserratingpageState extends State<Userratingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffCFE2FF),
          leading: Icon(Icons.arrow_back_ios_sharp),
          title: Padding(
            padding: EdgeInsets.only(left: 80),
            child: Text("Your rating"),
          ),
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 180, top: 20),
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image(image: AssetImage("assets/Bussiness men.png")),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 170),
                child: Center(
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Center(
                  child: Text(
                    "2+ Year experience",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150, top: 10),
                child: Container(
                  child: Center(
                    child: Text(
                      "Available",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff49CD6E),
                      borderRadius: BorderRadius.circular(10)),
                  height: 25,
                  width: 90,
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 110, top: 10),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 18,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 10),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 10),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5, top: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 10),
                                child: Icon(
                                  Icons.star_half,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5, top: 10),
                                    child: Icon(Icons.edit,
                                        color: Colors.black, size: 18),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40, top: 70),
                child: Text(
                  "Add rating",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 90, top: 30),
                child: Icon(
                  Icons.star_border,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 30),
                    child: Icon(
                      Icons.star_border,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 30),
                        child: Icon(
                          Icons.star_border,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5, top: 30),
                            child: Icon(
                              Icons.star_border,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 30),
                                child: Icon(
                                  Icons.star_border,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 100, top: 50),
                  child: Container(
                    child: Center(
                      child: Text(
                        "Submit",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2357D9)),
                  ),
                ),
              ]
          )
        ]));
  }
}
