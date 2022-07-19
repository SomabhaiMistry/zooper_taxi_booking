import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';
class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
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

              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 21),
                        decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.20)
                              )
                            ],
                            color: Colors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(icon_back,
                              height: 15,
                              width: 21.3,),
                            SizedBox(width: 17.4,),
                            Text(str_add_address,style: TextStyle(
                                fontFamily: sfpro_text_semibold,fontSize: 16.7,
                                color: black_163351),)
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 18.3,left: 15.5,right: 15.5),
                        child: Text(str_location,
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 12.5,fontFamily: sfpro_text_medium,color: silver_868590
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 28.7,left: 15.5),
                        child: Text(str_enter_location, style: TextStyle(
                            fontSize: 16.7,fontFamily: sfpro_text_semibold,color: black_163351
                        ),),
                      ),
                      Container(
                        height: 90,
                        margin: EdgeInsets.only(top: 7.7, right: 15.5, left: 15.5),
                        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 11.7),
                        decoration: BoxDecoration(
                            border: Border.all(color: gray_ebebeb, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            color: silver_f5f5f5),
                        child: new TextField(
                          // controller: titleController,
                          style: const TextStyle(
                              color: black_163351,
                              fontFamily: sfpro_text_medium,
                              fontSize: 14.0),
                          decoration: new InputDecoration(
                            isDense: true,
                            hintText:str_enter_location,
                            hintStyle: TextStyle(
                                color: black_163351,
                                fontFamily: sfpro_text_medium,
                                fontSize: 14.0),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.next,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 25.3,left: 15.5),
                        child: Text(str_name_of_the_building,
                          style: TextStyle(
                              fontSize: 16.7,fontFamily: sfpro_text_semibold,color: black_163351
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7.7, right: 15.5, left: 15.5),
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 11.7),
                        decoration: BoxDecoration(
                            border: Border.all(color: gray_ebebeb, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            color: silver_f5f5f5),
                        child: new TextField(
                          // controller: titleController,
                          style: const TextStyle(
                              color: black_163351,
                              fontFamily: sfpro_text_medium,
                              fontSize: 14.0),
                          decoration: new InputDecoration(
                            isDense: true,
                            hintText: str_building_name,
                            hintStyle: TextStyle(
                                color: black_163351,
                                fontFamily: sfpro_text_medium,
                                fontSize: 14.0),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 25.3,left: 15.5),
                        child: Text(str_call,
                          style: TextStyle(
                              fontSize: 16.7,fontFamily: sfpro_text_semibold,color: black_163351
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7.7, right: 15.5, left: 15.5),
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 11.7),
                        decoration: BoxDecoration(
                            border: Border.all(color: gray_ebebeb, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            color: silver_f5f5f5),
                        child: new TextField(
                          // controller: titleController,
                          style: const TextStyle(
                              color: black_163351,
                              fontFamily: sfpro_text_medium,
                              fontSize: 14.0),
                          decoration: new InputDecoration(
                            isDense: true,
                            hintText: str_home,
                            hintStyle: TextStyle(
                                color: black_163351,
                                fontFamily: sfpro_text_medium,
                                fontSize: 14.0),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 9.2,left: 15.5),
                        child: Text(str_eg_home,
                          style: TextStyle(
                              fontSize: 14,fontFamily: sfpro_text_regular,color: gray_9d9d9d
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 15.5, right: 15.5, bottom: 19.7),
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
                              str_leter,
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
                    SizedBox(width: 8.7,),
                    Expanded(
                      flex:1,
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            child: Text(
                              str_verify,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
