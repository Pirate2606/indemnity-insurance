import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:idemnity/details.dart';
import 'package:sizer/sizer.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(18.0.w, 6.43.h, 18.0.w, 12.43.h),
              child: Container(
                child: Image(
                  height: 27.34.h,
                  width: 62.22.w,
                  image: AssetImage("images/logo.png"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 1.87.h),
              child: Center(
                child: Text(
                  "Enter Recieved OTP",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF333258),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 41.0),
              child: Row(
                children: [                  
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      cursorColor: Color(0XFF333258),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0XFFEBEBEB),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4.47.h, left: 11.39.w, right: 11.39.w),
              child: Center(
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0XFF333258),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15.6.h, left: 27.68.w, right: 27.68.w),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Color(0XFFF36958),
                  ),
                  padding: MaterialStateProperty.resolveWith(
                    (states) =>
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  ),
                ),
                onPressed: () {
                   Navigator.push(context,
                      (MaterialPageRoute(builder: (context) => DetailsPage())));
                },
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0XFF1B1818),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
