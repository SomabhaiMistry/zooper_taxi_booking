import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  _EmailVerificationState createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
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
                  margin: EdgeInsets.only(top: 22.7.h,left: 20.7.w),
                  child: SvgPicture.asset(icon_back,height: 15.h,width: 21.3.w,)),

              Container(
                margin: EdgeInsets.only(top: 32.3.h,left: 18.3.w),
                child: Text(str_email_verification,style: TextStyle(
                  fontFamily: montserrat_bold,fontSize: 18.3.sp,color: black_163351
                ),),
              ),

              Container(
                margin: EdgeInsets.only(top: 6.3.h,left: 18.3.w),
                child: Text(str_please_enter_email_ID,style: TextStyle(
                  fontFamily: sfpro_text_regular,fontSize: 13.5.sp,color: gray_9d9d9d
                ),),
              ),

              Container(
                margin: EdgeInsets.only(top: 39.8.h, right: 18.3.w, left: 18.3.w),
                padding: EdgeInsets.symmetric(vertical: 7.5.h, horizontal: 13.w),
                decoration: BoxDecoration(
                    border: Border.all(color: gray_ebebeb, width: 1.w),
                    borderRadius: BorderRadius.all(Radius.circular(6.r)),
                    color: silver_f5f5f5),
                child: new TextField(
                  // controller: titleController,
                  style:  TextStyle(
                      color:black_163351 ,
                      fontFamily: sfpro_text_medium,
                      fontSize: 14.sp),
                  decoration: new InputDecoration(
                    isDense: true,
                    hintText: str_enter_email_address,
                    hintStyle: TextStyle(
                        color: gray_9d9d9d,
                        fontFamily: sfpro_text_medium,
                        fontSize: 14.sp),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
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
                            str_request_one_time_password,
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
