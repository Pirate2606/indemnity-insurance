import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Drawer_app extends StatefulWidget {
  @override
  _Drawer_appState createState() => _Drawer_appState();
}

class _Drawer_appState extends State<Drawer_app> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 4.18.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.5.w),
          child: Image(
            height: 12.5.h,
            width: 35.2.w,
            image: AssetImage("images/cl.png"),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.5.w),
          child: Text(
            "Customer Name",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        SizedBox(height: 6),
        Padding(
          padding: EdgeInsets.only(left: 5.5.w),
          child: Text(
            "+91 1234567899",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),
          ),
        ),
        SizedBox(height: 6),
        Padding(
          padding: EdgeInsets.only(left: 5.5.w),
          child: Text(
            "customeremail@email.com",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ),
        SizedBox(height: 2.4.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Divider(
            color: Color(0xffc5c2c2),
            thickness: 2,
          ),
        ),
        SizedBox(height: 2.1.h),
        Padding(
          padding: EdgeInsets.only(left: 5.5.w),
          child: Column(
            children: [
              Drawer_wid(
                icon: Icons.file_copy,
                text: "My Insurances",
              ),
              SizedBox(height: 2.3.h),
              Drawer_wid(
                icon: Icons.attach_money,
                text: "Claims",
              ),
              SizedBox(height: 2.3.h),
              Drawer_wid(
                icon: Icons.bookmark,
                text: "Bookmarks",
              ),
              SizedBox(height: 2.3.h),
              Drawer_wid(
                icon: CupertinoIcons.info_circle,
                text: "About Us",
              ),
              SizedBox(height: 2.3.h),
              Drawer_wid(
                icon: Icons.email,
                text: "Contact Us",
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.fromLTRB(24.44.w, 0, 24.44.w, 3.6.h),
          child: Row(
            children: [
              Icon(
                Icons.logout,
                size: 28,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Log Out",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Drawer_wid extends StatelessWidget {
  Drawer_wid({this.icon, this.text});
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 36,
          color: Color(0xff333258),
        ),
        SizedBox(
          width: 5.2.w,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
