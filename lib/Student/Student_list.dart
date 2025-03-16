import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(backgroundColor: Color(0xffCFE2FF),title: Text(""),),);
  }
}
