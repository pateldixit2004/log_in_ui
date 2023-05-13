
import 'package:flutter/material.dart';
import 'package:log_in_ui/screen/login.dart';
import 'package:log_in_ui/screen/u_login_screen.dart';
import 'package:log_in_ui/screen/welcome.dart';
import 'package:sizer/sizer.dart';
void main()
{
  runApp(
    Sizer(
      builder:(context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // '/':(context)=>u_LoginScreen(),
          // '/':(context)=>Welcome(),
          '/':(context)=>Login(),
        },
      ),
    )
  );
}