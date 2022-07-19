import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/UiScreenList/PopupAlertDialog.dart';
import 'package:zooper_taxi_booking/UiScreenList/PopupModifyRide.dart';

import 'PopupCancelRide.dart';

class PopupDialog extends StatefulWidget {
  @override
  _PopupDialogState createState() => _PopupDialogState();
}

class _PopupDialogState extends State<PopupDialog> {

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 24, right: 24, top: 24),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(
                        "Popup ModifyRide",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: sfpro_text_medium),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return
                                SimpleDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                  children: [
                                    Container(height: 390,width: 450, child:PopupModifyRide(),),

                                  ],//this right here
                                  // child:
                                );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: pink_ff5465,
                        onPrimary: Colors.white,
                        elevation: 0,
                        padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: pink_ff5465, width: 0),
                        ),
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, right: 24, top: 24),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(
                        "Popup CancelRide",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: sfpro_text_medium),
                      ),
                      onPressed: () {

                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return
                                SimpleDialog(

                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                  children: [
                                    Container(height: 180,width: 450, child:PopupCancelRide(),),
                              ],
                                );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: pink_ff5465,
                        onPrimary: Colors.white,
                        elevation: 0,
                        padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: pink_ff5465, width: 0),
                        ),
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, right: 24, top: 24),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(
                        "Alert Dialog",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: sfpro_text_medium),
                      ),
                      onPressed: () {

                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return
                                SimpleDialog(

                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                  children: [
                                    Container(height: 135,width: 450, child:PopupAlertDialog(),),
                              ],
                                );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: pink_ff5465,
                        onPrimary: Colors.white,
                        elevation: 0,
                        padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: pink_ff5465, width: 0),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}