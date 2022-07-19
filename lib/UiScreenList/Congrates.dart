import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class Congrates extends StatefulWidget {
  const Congrates({Key? key}) : super(key: key);

  @override
  _CongratesState createState() => _CongratesState();
}

class _CongratesState extends State<Congrates> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor:statusbar_f8f8f8, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.light, //navigation bar icons' color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 22.7.h, left: 20.7.w),
                  child: SvgPicture.asset(
                    icon_back,
                    height: 15.h,
                    width: 21.3.w,
                  )),
              SizedBox(
                height: 79.3.h,
              ),
              Center(
                child: Image.asset(
                  img_congrates,
                  height: 336.5.h,
                  width: 274.w,
                ),
              ),
              SizedBox(
                height: 24.3.h,
              ),
              Center(
                child: Text(
                  str_congrats,
                  style: TextStyle(
                      fontFamily: montserrat_bold,
                      fontSize: 25.sp,
                      color: black_163351),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Text(
                  str_your_email_verification_successful,
                  style: TextStyle(
                      fontFamily: sfpro_text_regular,
                      fontSize: 15.sp,
                      color: gray_9d9d9d),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(left: 26.7.w, right: 26.7.w, bottom: 26.7.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: Text(
                            str_Let_set_up_password,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontFamily: sfpro_text_medium),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: btn_black_0b0b0b,
                            onPrimary: Colors.white,
                            elevation: 0,
                            padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 16.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.r),
                              // side: BorderSide(color: skygreen_24d39e, width: 0),
                            ),
                          )),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
