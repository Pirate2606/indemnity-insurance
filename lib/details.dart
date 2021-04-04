import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:idemnity/home_page.dart';
import 'package:sizer/sizer.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  DateTime _sd;
  String _sdf = DateTime.now().toString().substring(0, 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg1.png"), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(13.0.w, 30.0.h, 17.2.w, 5.0.h),
            child: TextField(
              cursorColor: Color(0XFF333258),
              keyboardType: TextInputType.text,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                isDense: true,
                hintText: "First Name",
                hintStyle: TextStyle(color: Color(0XFF333258), fontSize: 18),
                contentPadding: EdgeInsets.only(bottom: 5.0),
                counter: Offstage(),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFF333258),
                    width: 2.0,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFF333258),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(13.0.w, 0, 17.2.w, 5.0.h),
            child: TextField(
              cursorColor: Color(0XFF333258),
              keyboardType: TextInputType.text,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                isDense: true,
                hintText: "Last Name",
                hintStyle: TextStyle(color: Color(0XFF333258), fontSize: 18),
                contentPadding: EdgeInsets.only(bottom: 6.0),
                counter: Offstage(),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFF333258),
                    width: 2.0,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFF333258),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(13.0.w, 0, 17.2.w, 5.0.h),
            child: TextField(
              cursorColor: Color(0XFF333258),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                isDense: true,
                hintText: "E-mail",
                hintStyle: TextStyle(color: Color(0XFF333258), fontSize: 18),
                contentPadding: EdgeInsets.only(bottom: 6.0),
                counter: Offstage(),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFF333258),
                    width: 2.0,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFF333258),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 7.875.h,
            margin: EdgeInsets.only(left: 13.0.w, right: 17.2.w),
            decoration: BoxDecoration(
                color: Color(0xffE5E5E5),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("DOB :",
                      style: TextStyle(color: Color(0XFF333258), fontSize: 18)),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  _sdf,
                  style: TextStyle(
                      color: Color(0XFF333258),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Color(0XFF333258),
                  ),
                  onPressed: () async {
                    await showDatePicker(
                      context: context,
                      initialDate: _sd == null ? DateTime.now() : _sd,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2200),
                    ).then((date) => {
                          _sd = date,
                          print(_sd),
                          _sdf = _sd.toString().substring(0, 10)
                        });
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 17.0.h),
          Container(
            padding: EdgeInsets.only(left: 27.68.w, right: 27.68.w),
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
                Navigator.push(
                  context,
                  (MaterialPageRoute(
                    builder: (context) => HomePage(),
                  )),
                );
              },
              child: Center(
                child: Text(
                  "Proceed",
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
    ));
  }
}
