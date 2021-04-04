import 'package:flutter/material.dart';
import 'package:idemnity/login_page.dart';
import 'package:sizer/sizer_util.dart';
import 'details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(                           //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(                  //return OrientationBuilder
          builder: (context, orientation) {            
            SizerUtil().init(constraints, orientation);  //initialize SizerUtil
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Sizer',
              theme: ThemeData.light(),
              home: LoginPage(),
            );
          },
        );
      },
    );
  }
}