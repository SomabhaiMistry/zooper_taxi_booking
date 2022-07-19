import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';

import 'Indicator.dart';

class ViewPagerSlider extends StatefulWidget {
  @override
  _ViewPagerSliderState createState() => _ViewPagerSliderState();
}

class _ViewPagerSliderState extends State<ViewPagerSlider> {
  final PageController controller = PageController(initialPage: 0);

  int _currentIndex = 0;
  late PageController _pageController;

  // get slideIndex => 0;

  void _pageChanged(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: PageView(
                              controller: controller,
                              onPageChanged: (index) {
                                setState(() => _currentIndex = index);
                              },
                              children: <Widget>[
                                Container(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 25.w),
                                      child: Text(
                                        "Explore Online\nCourses",
                                        style: TextStyle(
                                            fontFamily: sfpro_text_semibold,
                                            fontSize: 32.sp,
                                            color: black_163351),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 25.w),
                                      child: Text(
                                        "All types of educational & professional\ncourses available online.",
                                        style: TextStyle(
                                            fontFamily: sfpro_text_medium,
                                            fontSize: 14.sp,
                                            color: black_163351),
                                      ),
                                    ),
                                    SizedBox(height: 0,),
                                    Container(
                                      margin: EdgeInsets.only(left: 17.w),
                                      child: Image.asset(
                                        img_logo,
                                        width: 250.w,
                                        height: 350.h,
                                      ),
                                    ),
                                  ],
                                )),
                                Container(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 25.w),
                                      child: Text(
                                        "Explore Online\nCourses",
                                        style: TextStyle(
                                            fontFamily: sfpro_text_semibold,
                                            fontSize: 32.sp,
                                            color: black_163351),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 25.w),
                                      child: Text(
                                        "All types of educational & professional\ncourses available online.",
                                        style: TextStyle(
                                            fontFamily: sfpro_text_medium,
                                            fontSize: 14.sp,
                                            color: black_163351),
                                      ),
                                    ),
                                    SizedBox(height: 0,),
                                    Container(
                                      margin: EdgeInsets.only(left: 17.w),
                                      child: Image.asset(
                                        img_logo,
                                        width: 250.w,
                                        height: 350.h,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ],
                                )),
                                Container(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 25.w),
                                      child: Text(
                                        "Explore Online\nCourses",
                                        style: TextStyle(
                                            fontFamily: sfpro_text_semibold,
                                            fontSize: 32.sp,
                                            color: black_163351),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 25.w),
                                      child: Text(
                                        "All types of educational & professional\ncourses available online.",
                                        style: TextStyle(
                                            fontFamily: sfpro_text_medium,
                                            fontSize: 14.sp,
                                            color: black_163351),
                                      ),
                                    ),
                                    SizedBox(height: 0,),
                                    Container(
                                      margin: EdgeInsets.only(left: 17.w),
                                      child: Image.asset(
                                        img_logo,
                                        width: 250.w,
                                        height: 350.h,
                                      ),
                                    ),
                                  ],
                                )),
                              ]),
                        ),

                        Container(
                          child: _currentIndex != 2
                              ? Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 25.w,
                                        right: 25.w,
                                        bottom: 15.h,
                                        top: 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Indicator(
                                          controller: controller,
                                          itemCount: 3,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              print(
                                                  "this is slideIndex: $_currentIndex");
                                              controller.animateToPage(
                                                  _currentIndex + 1,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.linear);
                                            },
                                            child: Container(
                                              height: 50.h,
                                              width: 90.w,
                                              decoration: BoxDecoration(
                                                  // boxShadow: [
                                                  //   BoxShadow(
                                                  //       color: const Color(
                                                  //           0x40000000),
                                                  //       offset: Offset(0, 7),
                                                  //       blurRadius: 15,
                                                  //       spreadRadius: 0)
                                                  // ],
                                                  color: pink_ff5465,
                                                  borderRadius:
                                                      new BorderRadius
                                                          .circular(12)),
                                              child: Center(
                                                child: Text(
                                                  "Next",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          sfpro_text_semibold,
                                                      fontSize: 18.sp,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                )
                              :
                              //    STart button
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 50.h,
                                    width: 125.w,
                                    margin: EdgeInsets.only(right: 25.w,bottom: 15.h),
                                    decoration: BoxDecoration(
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //       color: const Color(0x40000000),
                                        //       offset: Offset(0, 7),
                                        //       blurRadius: 15,
                                        //       spreadRadius: 0)
                                        // ],
                                        color: pink_ff5465,
                                        borderRadius:
                                            new BorderRadius.circular(12)),
                                    child: Center(
                                      child: Text(
                                        "Get Start",
                                        style: TextStyle(
                                            fontFamily: sfpro_text_semibold,
                                            fontSize: 18.sp,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )),
                        ),

              ],
            )));
  }
}
