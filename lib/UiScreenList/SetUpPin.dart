import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class SetUpPin extends StatefulWidget {
  const SetUpPin({Key? key}) : super(key: key);

  @override
  _SetUpPinState createState() => _SetUpPinState();
}

class _SetUpPinState extends State<SetUpPin> {

  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;
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
              Container(
                margin: EdgeInsets.only(top: 32.3.h, left: 18.3.w),
                child: Text(
                  str_set_up_pin,
                  style: TextStyle(
                      fontFamily: montserrat_bold,
                      fontSize: 18.3.sp,
                      color: black_163351),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6.3.h, left: 18.3.w),
                child: Text(
                  str_login_to_your_account,
                  style: TextStyle(
                      fontFamily: sfpro_text_regular,
                      fontSize: 14.sp,
                      color: gray_9d9d9d),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 18.3.w,top: 39.3.h),
                child: SizedBox(
                  width: 270.w,
                  child: Theme(
                    data: ThemeData(
                      primaryColor: black,
                      primaryColorDark: black,
                      focusColor: black,
                      textSelectionTheme: TextSelectionThemeData(
                        cursorColor: black, //thereby
                      ),
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '*',
                      obscuringWidget: null,
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      enablePinAutofill: true,
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(12.r),
                          fieldHeight: 50,
                          fieldWidth: 50,
                          borderWidth: 1,
                          activeFillColor: Color(0xfff5f5f5),
                          inactiveColor: Color(0xfff5f5f5),
                          inactiveFillColor: Color(0xfff5f5f5),
                          errorBorderColor: Color(0xfff5f5f5),
                          activeColor: Color(0xfff5f5f5),
                          selectedColor: Color(0xfff5f5f5),
                          selectedFillColor: Color(0xfff5f5f5)),
                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      boxShadows: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: gray_e2e2e2,
                          blurRadius: 2.r,
                        )
                      ],
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h, left: 18.3.w),
                child: Text(
                  "Password",
                  style: TextStyle(
                      fontFamily: sfpro_text_medium,
                      fontSize: 18.3.sp,
                      color: black_163351),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(left: 26.7.w, right: 26.7.w, bottom: 20.7.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: Text(
                            str_save,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontFamily: sfpro_text_medium),
                          ),
                          onPressed: () {


                          },
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
