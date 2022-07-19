import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: statusbar_f8f8f8, // status bar color
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
                  margin: EdgeInsets.only(top: 22.7.h, left: 18.w),
                  child: SvgPicture.asset(
                    icon_back,
                    height: 15.h,
                    width: 21.3.w,
                  )),
              Container(
                margin: EdgeInsets.only(top: 32.3.h, left: 18.w),
                child: Text(
                  str_my_profile,
                  style: TextStyle(
                      fontFamily: montserrat_bold,
                      fontSize: 18.3.sp,
                      color: black_163351),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.h, left: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 40.r,
                          backgroundColor: gray_e2e2e2,
                          child: ClipRRect(
                            // borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              img_logo,
                              width: 95.w,
                              height: 95.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 3),
                            child: SvgPicture.asset(
                              icon_plus,
                              width: 18.5.w,
                              height: 18.5.h,
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 12.3.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          str_user,
                          style: TextStyle(
                              fontFamily: sfpro_text_semibold,
                              color: btn_black_0b0b0b,
                              fontSize: 19.3.sp),
                        ),
                        Text(
                          str_email,
                          style: TextStyle(
                              fontFamily: sfpro_text_regular,
                              color: btn_black_0b0b0b,
                              fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          str_phone_no,
                          style: TextStyle(
                              fontFamily: sfpro_text_medium,
                              color: btn_black_0b0b0b,
                              fontSize: 14.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18.w, top: 25.h),
                child: Text(
                  str_company_name,
                  style: TextStyle(
                      fontFamily: sfpro_text_medium,
                      fontSize: 12.sp,
                      color: black_163351),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13.5.h, horizontal: 12.w),
                margin: EdgeInsets.only(left: 18.w, right: 18.w, top: 8.h),
                decoration: BoxDecoration(
                    border: Border.all(color: gray_ebebeb, width: 1.w),
                    borderRadius: BorderRadius.all(Radius.circular(6.r)),
                    color: silver_f5f5f5),
                child: Text(
                  str_wolfsoft,
                  style: TextStyle(
                      fontFamily: sfpro_text_medium,
                      fontSize: 14.sp,
                      color: black_163351),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 18.w
                    , top: 15.h),
                child: Text(
                  str_work_city,
                  style: TextStyle(
                      fontFamily: sfpro_text_medium,
                      fontSize: 12.sp,
                      color: black_163351),
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    vertical: 13.5.h, horizontal: 12.w),
                margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 8.h),
                decoration: BoxDecoration(
                    border: Border.all(color: gray_ebebeb, width: 1.w),
                    borderRadius: BorderRadius.all(Radius.circular(6.r)),
                    color: silver_f5f5f5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        str_pune_maharastra_india,
                        style: TextStyle(
                            fontFamily: sfpro_text_medium,
                            fontSize: 14.sp,
                            color: black_163351),
                      ),
                    ),
                    Image.asset(
                      img_arrow_spinner,
                      height: 10.h,
                      width: 10.w,
                      color: black_163351,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18.w
                    , top: 15.h),
                child: Text(
                  str_bol,
                  style: TextStyle(
                      fontFamily: sfpro_text_medium,
                      fontSize: 12.sp,
                      color: black_163351),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13.5.h, horizontal: 12.w),
                margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 8.h),
                decoration: BoxDecoration(
                    border: Border.all(color: gray_ebebeb, width: 1.w),
                    borderRadius: BorderRadius.all(Radius.circular(6.r)),
                    color: silver_f5f5f5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        str_phase,
                        style: TextStyle(
                            fontFamily: sfpro_text_medium,
                            fontSize: 14.sp,
                            color: black_163351),
                      ),
                    ),
                    Image.asset(
                      img_arrow_spinner,
                      height: 10.h,
                      width: 10.w,
                      color: black_163351,
                    )
                  ],
                ),
              ),

              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(left: 18.3.w, right: 18.3.w, bottom: 20.7.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: Text(
                            str_edit,
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
