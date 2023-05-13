import 'package:flutter/material.dart';
import 'package:log_in_ui/utils/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtname =TextEditingController();
  TextEditingController txtpassword =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(1.8,-1.7),
            child: CircleAvatar(
              radius: 40.w,
              backgroundColor: Color(0xff38B4FE),
            ),
          ),
          Align(
            alignment: Alignment(-3,-1.8),
            child: CircleAvatar(
              radius: 43.w,
              backgroundColor: Color(0xff2A8CED),
            ),
          ),
          Align(
            alignment: Alignment(-5,-1.7),
            child: CircleAvatar(
              radius: 41.w,
              backgroundColor: Color(0xff1F6AC7),
            ),
          ),
          Align(
            alignment: Alignment(0,-0.7),
            child: CircleAvatar(
              radius: 20.w,
              backgroundColor: Colors.white,

              child: Transform.rotate(angle: 0,child: FlutterLogo(size: 20.w,)),
            ),
          ),
          Align(
            alignment: Alignment(0,0.12),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(

                    controller: txtname,

                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(fontSize: 20),
                      suffixIcon: Icon(Icons.person,color: Color(0xff2A8CED),)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(


                    controller: txtpassword,


                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 20),
                      suffixIcon: Icon(Icons.person,color: Color(0xff2A8CED),)
                    ),
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
                      ])
                    ),
                  )
                ],
              ),
            ),
          ),


          ElevatedButton(onPressed: () {

            var name= txtname.text;
            var password= txtpassword.text;

            sharedclass shar = sharedclass();
            shar.setData();



          }, child: Text("Login")),
          ElevatedButton(onPressed: () {




            sharedclass shar = sharedclass();
            shar.getData();




            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("")));


          }, child: Text("print")),
          Align(
            alignment: Alignment(0.5, 0.95),
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
    ),);
  }
}
