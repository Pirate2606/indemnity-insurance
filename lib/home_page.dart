import 'package:flutter/material.dart';
import 'package:idemnity/Drawer.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Drawer_app(),
      ),
      appBar: AppBar(
        actions: [
          Icon(
            Icons.account_box,
            size: 30,
          ),
          SizedBox(
            width: 15,
          )
        ],
        backgroundColor: Color(0xee8C94CC),
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Color(0xff8C94CC),
      body: Column(
        children: [
          Image(
            height: 22.31.h,
            width: 60.89.w,
            image: AssetImage("images/logo.png"),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 24.68.h,
                      width: 43.89.w,
                      margin: EdgeInsets.only(left: 3.89.w),
                      decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 17),
                            child: Icon(
                              Icons.car_rental,
                              size: 13.31.h,
                              color: Color(0xff333258),
                            ),
                          ),
                          Center(
                              child: Text(
                            "Motor",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff333258)),
                          )),
                          Center(
                              child: Text("Insurance",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff333258)))),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 4.44.w,
                    ),
                    Container(
                      height: 24.68.h,
                      width: 43.89.w,
                      margin: EdgeInsets.only(right: 3.89.w),
                      decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 17),
                            child: Icon(
                              Icons.laptop,
                              size: 13.31.h,
                              color: Color(0xff333258),
                            ),
                          ),
                          Center(
                              child: Text(
                            "Gadget",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff333258)),
                          )),
                          Center(
                              child: Text("Insurance",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff333258)))),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 2.18.h),
                Row(
                  children: [
                    Container(
                      height: 24.68.h,
                      width: 43.89.w,
                      margin: EdgeInsets.only(left: 3.89.w),
                      decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 17),
                            child: Icon(
                              Icons.house,
                              size: 13.31.h,
                              color: Color(0xff333258),
                            ),
                          ),
                          Center(
                              child: Text(
                            "Property",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff333258)),
                          )),
                          Center(
                              child: Text("Insurance",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff333258)))),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 4.44.w,
                    ),
                    Container(
                      height: 24.68.h,
                      width: 43.89.w,
                      margin: EdgeInsets.only(right: 3.89.w),
                      decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 17),
                            child: Icon(
                              Icons.attach_money,
                              size: 13.31.h,
                              color: Color(0xff333258),
                            ),
                          ),
                          Center(
                              child: Text(
                            "Claim",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff333258)),
                          )),
                          Center(
                              child: Text("Settlement",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff333258)))),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
