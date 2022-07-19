import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class MyProfileEdit extends StatefulWidget {
  const MyProfileEdit({Key? key}) : super(key: key);

  @override
  _MyProfileEditState createState() => _MyProfileEditState();
}

class _MyProfileEditState extends State<MyProfileEdit> {
  String? dropdownValue;
  String? dropdownValue_location;
  bool isLayoutFirst = false;

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
          body: SingleChildScrollView(
            child: Column(
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
                  margin: EdgeInsets.only(top: 32.3.h,left: 20.7.w),
                  child: Text(
                    str_my_profile,
                    style: TextStyle(
                        fontFamily: montserrat_bold,
                        fontSize: 18.3.sp,
                        color: black_163351),
                  ),
                ),
                SizedBox(
                  height: 27.5.h,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                        backgroundColor: gray_e2e2e2,
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            img_logo,
                            width: 80.w,
                            height: 80.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 3.h),
                          child: SvgPicture.asset(
                            icon_plus,
                            width: 18.5.w,
                            height: 18.5.h,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 26.w, right: 26.w, top: 30.h),
                  child: TextFormField(
                      cursorColor: gray_9d9d9d,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
                        labelText: str_full_name,
                        labelStyle: TextStyle(
                            fontSize: 12.5.sp,
                            fontFamily: sfpro_text_regular,
                            color: black_163351),
                        hintText: str_enter_full_name,
                        floatingLabelStyle: TextStyle(
                            color: black_163351,
                            fontFamily: sfpro_text_medium,
                            fontSize: 14.sp),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                                BorderSide(color: black_163351, width: 1.w)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                                BorderSide(color: gray_9d9d9d, width: 1.w)),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 26.w, right: 26.w, top: 16.5.h),
                  child: TextFormField(
                      cursorColor: gray_9d9d9d,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.w
                                , top: 15.h, bottom: 15.h),
                        labelText: str_e_mail,
                        labelStyle: TextStyle(
                            fontSize: 12.5.sp,
                            fontFamily: sfpro_text_regular,
                            color: black_163351),
                        hintText: str_enter_mail,
                        floatingLabelStyle:  TextStyle(
                            color: black_163351,
                            fontFamily: sfpro_text_medium,
                            fontSize: 14.sp),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                                BorderSide(color: black_163351, width: 1.w)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                                BorderSide(color: gray_9d9d9d, width: 1.w)),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 26.w, right: 26.w, top: 16.5.h),
                  child: TextFormField(
                      cursorColor: gray_9d9d9d,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
                        labelText: str_company_name,
                        labelStyle: TextStyle(
                            fontSize: 12.5.sp,
                            fontFamily: sfpro_text_regular,
                            color: black_163351),
                        hintText: str_comapany_name,
                        floatingLabelStyle: TextStyle(
                            color: black_163351,
                            fontFamily: sfpro_text_medium,
                            fontSize: 14.sp),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                                BorderSide(color: black_163351, width: 1.w)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                                BorderSide(color: gray_9d9d9d, width: 1.w)),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 26.w, right: 26.w, top: 16.5.h),
                  child: TextFormField(
                      cursorColor: gray_9d9d9d,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
                        labelText: str_mobile_number,
                        labelStyle: TextStyle(
                            fontSize: 12.5.sp,
                            fontFamily: sfpro_text_regular,
                            color: black_163351),
                        hintText: str_enter_mobile_number,
                        floatingLabelStyle: TextStyle(
                            color: black_163351,
                            fontFamily: sfpro_text_medium,
                            fontSize: 14.sp),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                                BorderSide(color: black_163351, width: 1.w)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                                BorderSide(color: gray_9d9d9d, width: 1.w)),
                      )),
                ),

                /*Select Work city Spinner*/

                Container(
                  margin: EdgeInsets.only(left: 26.w, right: 26.w, top: 16.5.h),
                  child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: ["USA","Brazil", "Tunisia", 'Canada'],
                      dropdownSearchDecoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
                        isDense: true,
                        // you can change this with the top text like you want

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                            BorderSide(color: black_163351, width: 1.w)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                            BorderSide(color: gray_9d9d9d, width: 1.w)),
                        filled: false,
                        labelText: str_work_city,
                        labelStyle: TextStyle(color: black_163351,fontFamily: sfpro_text_medium,fontSize: 12.5.sp),

                        hintText: str_s_work_city,
                        hintStyle: TextStyle(
                            color: black_163351, fontFamily: sfpro_text_medium,fontSize: 14.sp),
                      ),
                      popupItemDisabled: (String s) => s.startsWith('I'),
                      onChanged: (value) {
                        setState(() {
                          dropdownValue = value;
                        });
                      },
                      selectedItem: dropdownValue
                  ),

                ),
                /*Select Base Office Location Spinner*/

                Container(
                  margin: EdgeInsets.only(left: 26.w, right: 26.w, top: 16.5.h),
                  child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: ["USA","Brazil", "Tunisia", 'Canada'],
                      dropdownSearchDecoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
                        isDense: true,

                        // you can change this with the top text like you want

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                            BorderSide(color: black_163351, width: 1.w)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            borderSide:
                            BorderSide(color: gray_9d9d9d, width: 1.w)),
                        filled: false,
                        labelText: str_bol,
                        labelStyle: TextStyle(color: black_163351,fontFamily: sfpro_text_medium,fontSize: 12.5.sp),

                        hintText: str_s_bol,
                        hintStyle: TextStyle(
                            color: black_163351, fontFamily: sfpro_text_medium,fontSize: 14.sp),
                      ),
                      popupItemDisabled: (String s) => s.startsWith('I'),
                      onChanged: (value) {
                        setState(() {
                          dropdownValue_location = value;
                        });
                      },
                      selectedItem: dropdownValue_location
                  ),

                ),

                Container(
                  margin: EdgeInsets.only(left: 26.w, right: 26.w, top: 26.h),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
