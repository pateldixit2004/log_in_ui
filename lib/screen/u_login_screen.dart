import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class u_LoginScreen extends StatefulWidget {
  const u_LoginScreen({Key? key}) : super(key: key);

  @override
  State<u_LoginScreen> createState() => _u_LoginScreenState();
}

class _u_LoginScreenState extends State<u_LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment(1.8, -1.7),
              child: CircleAvatar(
                radius: 40.w,
                backgroundColor: Color(0xff38B4FE),
              ),
            ),
            Align(
              alignment: Alignment(-4, -1.6),
              child: CircleAvatar(
                radius: 44.w,
                backgroundColor: Color(0xff2A8CED),
              ),
            ),
            Align(
              alignment: Alignment(-5,-1.67),
              child: CircleAvatar(
                radius: 42.5.w,
                backgroundColor: Color(0xff1F6AC7),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.7),
              child: CircleAvatar(
                radius: 20.w,
                backgroundColor: Colors.white,
                child: Transform.rotate(
                    angle: 0,
                    child: FlutterLogo(
                      size: 25.w,
                    )),
              ),
            ),

            Align(
              alignment: Alignment(0, 0.12),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Create",
                      style: TextStyle(
                          color: Color(0xff1F6AC7),
                          fontSize: 10.h,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("account",style: TextStyle(fontSize: 5.w,color: Color(0xff2A8CED)),),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 20),
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xff2A8CED),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 20),
                          suffixIcon: Icon(
                            Icons.person,
                            color: Color(0xff2A8CED),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 5.h,
                      width: 50.w,
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 4.w,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xff1F6AC7),
                        Color(0xff2A8CED),
                        Color(0xff38B4FE),
                      ])),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.5, 0.90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: TextStyle(fontSize: 3.w),
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 3.w,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
