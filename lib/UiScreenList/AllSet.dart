import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class AllSet extends StatefulWidget {
  const AllSet({Key? key}) : super(key: key);

  @override
  _AllSetState createState() => _AllSetState();
}

class _AllSetState extends State<AllSet> {
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
                  margin: EdgeInsets.only(top: 22.7, left: 20.7),
                  child: SvgPicture.asset(
                    icon_back,
                    height: 15,
                    width: 21.3,
                  )),
              SizedBox(
                height: 55.7,
              ),
              Center(
                child: Image.asset(
                  img_congrates,
                  height: 336.5,
                  width: 274,
                ),
              ),
              SizedBox(
                height: 38.5,
              ),
              Center(
                child: Text(
                  str_you_are_all_set,
                  style: TextStyle(
                      fontFamily: montserrat_bold,
                      fontSize: 25,
                      color: black_163351),
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Text(
                  str_rushabh,
                  style: TextStyle(
                      fontFamily: sfpro_text_semibold,
                      fontSize: 15,
                      color: blue_1f78e7),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  str_booking,
                  style: TextStyle(
                    height: 1.2,
                      fontFamily: sfpro_text_regular,
                      fontSize: 13.3,
                      color: black_163351),
                  textAlign: TextAlign.center,
                ),
              ),


              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 19.7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex:1,
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                child: Text(
                                  str_call_leter,
                                  style: TextStyle(
                                      color: black_163351,
                                      fontSize: 15,
                                      fontFamily: sfpro_text_medium),
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  elevation: 0,
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                     side: BorderSide(color: gray_ebebeb, width: 1),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(width: 6.7,),
                        Expanded(
                          flex:1,
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                child: Text(
                                  str_add_address,
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
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    // side: BorderSide(color: skygreen_24d39e, width: 0),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
