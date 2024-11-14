import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_project/admin/Add_Admin.dart';

import 'UserOrMechPage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 130.w,top: 350.h),
                child: InkWell(onTap: () {
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Userormechpage();
                      },
                    ));
                  }
                },
                  child: Container(
                    height: 160.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage("assets/admin.png"))),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
