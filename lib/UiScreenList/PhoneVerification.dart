import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  String? dropdownValue;

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 22.7, left: 20.7),
                  child: SvgPicture.asset(
                    icon_back,
                    height: 15,
                    width: 21.3,
                  )),
              Container(
                margin: EdgeInsets.only(top: 32.3, left: 18.3),
                child: Text(
                  str_phone_verification,
                  style: TextStyle(
                      fontFamily: montserrat_bold,
                      fontSize: 18.3,
                      color: black_163351),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6.3, left: 18.3),
                child: Text(
                  str_pl_mobile_number,
                  style: TextStyle(
                      fontFamily: sfpro_text_regular,
                      fontSize: 14,
                      color: gray_9d9d9d),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 39.8, right: 15, left: 15),
                padding: EdgeInsets.symmetric(horizontal: 13.2),
                decoration: BoxDecoration(
                    border: Border.all(color: gray_ebebeb, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: silver_f5f5f5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 55,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: new Text(str_zero),
                          value: dropdownValue,
                          icon: Image.asset(
                            img_arrow_spinner,
                            height: 13,
                            width: 13,
                          ),
                          // iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(
                              color: black_163351,
                              fontSize: 14,
                              fontFamily: sfpro_text_medium),
                          // underline: Container(
                          //   height: 2,
                          //   color: Colors.deepPurpleAccent,
                          // ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['+31', '+61', '+891', '+91']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                        height: 45,
                        child: VerticalDivider(
                          color: gray_ebebeb,
                          thickness: 2,
                        )),
                    Expanded(
                      child: TextField(
                        // controller: titleController,
                        style: const TextStyle(
                            color: black_163351,
                            fontFamily: sfpro_text_medium,
                            fontSize: 14.0),
                        decoration: new InputDecoration(
                          isDense: true,
                          hintText: str_enter_mobile_number,
                          hintStyle: TextStyle(
                              color: gray_9d9d9d,
                              fontFamily: sfpro_text_medium,
                              fontSize: 14.0),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 15,left: 15),
                      padding: EdgeInsets.symmetric(horizontal: 13.2,vertical: 7),
                      decoration: BoxDecoration(
                          border: Border.all(color: gray_ebebeb, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)),

                          color: silver_f5f5f5
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(str_pin,style: TextStyle(
                              fontSize: 14,fontFamily: sfpro_text_medium,
                              color: black_163351
                          ),),
                          SizedBox(width: 17.3,),
                          Expanded(
                            child: TextField(
                              // controller: titleController,
                              style: const TextStyle(
                                  color: black_163351,
                                  fontFamily: sfpro_text_medium,
                                  fontSize: 14.0),
                              decoration: new InputDecoration(
                                isDense: true,
                                hintText: str_e_pin,
                                hintStyle: TextStyle(
                                    color: gray_9d9d9d,
                                    fontFamily: sfpro_text_medium,
                                    fontSize: 14.0),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    margin: EdgeInsets.only(right: 15,top: 15),
                    padding: EdgeInsets.symmetric(horizontal: 33.2,vertical: 14.8),
                    decoration: BoxDecoration(
                        border: Border.all(color: gray_ebebeb, width: 1),
                        borderRadius: BorderRadius.circular(6),
                        color: silver_f5f5f5),
                    child: Text(str_timing,style: TextStyle(
                        fontSize: 14,fontFamily: sfpro_text_medium,
                        color: pink_ff5465
                    ),),
                  ),
                ],
              ),

              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 15, right: 15, bottom: 20.7),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: Text(
                            str_request_one_time_password,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: sfpro_text_medium),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: btn_black_0b0b0b,
                            onPrimary: Colors.white,
                            elevation: 0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
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
