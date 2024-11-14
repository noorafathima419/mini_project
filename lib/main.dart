import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mechanic/Mech_bottomnavigationbar.dart';
import 'Mechanic/Mech_edit_profile.dart';
import 'Mechanic/Mech_notification.dart';
import 'Mechanic/Mech_profile.dart';
import 'Mechanic/Mech_rating.dart';
import 'Mechanic/Mech_request_home.dart';
import 'Mechanic/Mech_service.dart';
import 'Mechanic/Mech_service_home.dart';
import 'Mechanic/Mech_sighn_up.dart';
import 'Mechanic/mech_login.dart';
import 'Mechanic/mech_status_complited.dart';
import 'Mechanic/mech_tapbar.dart';
import 'Mechanic/mechservice_accept_reject.dart';
import 'Splash.dart';
import 'User/MechnicFailedPage.dart';
import 'User/UserMechanicDetailss.dart';
import 'User/UserMechnicList.dart';
import 'User/UserMechnicTapbar.dart';
import 'User/UserMerchnicBill.dart';
import 'User/UserPaymentPage.dart';
import 'User/UserRatingPage.dart';
import 'User/UserRequestMechniclist.dart';
import 'User/User_login.dart';
import 'User/User_notification.dart';
import 'User/User_profile.dart';
import 'User/User_sign_up.dart';
import 'UserOrMechPage.dart';
import 'admin/Add_Admin.dart';
import 'admin/Admin_home.dart';
import 'admin/Admin_mechanic.dart';
import 'admin/Admin_notification.dart';
import 'admin/Admin_payment.dart';
import 'admin/Admin_user.dart';
import 'admin/BottumNavigationBar.dart';
import 'admin/Mechanic_detail.dart';
import 'admin/Tapbar.dart';
import 'admin/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 892),
    splitScreenMode: true,
    minTextAdapt: true,
    builder: (context, child) =>
      MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UserProfile(),
    ));
  }
}

