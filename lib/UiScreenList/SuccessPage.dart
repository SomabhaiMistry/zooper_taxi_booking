import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor:Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.light, //navigation bar icons' color
    ));
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor:Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Image.asset(img_logo,height: 80,
                width: 80,),
              ),
              SizedBox(height: 15,),
              
              Center(
                child: Text("Rs. 350 Paid",style: TextStyle(
                  fontSize: 18,fontFamily: sfpro_text_bold,color: black_163351
                ),),
              ),
              SizedBox(height: 15,),

              Center(
                child: Text("Max Life Pharma",style: TextStyle(
                  fontSize: 15,fontFamily: sfpro_text_medium,color: silver_868590
                ),),
              ),
              SizedBox(height: 2,),

              Center(
                child: Text("Maj@123",style: TextStyle(
                  fontSize: 15,fontFamily: sfpro_text_medium,color: silver_868590
                ),),
              ),


              // Expanded(
              //   child: Align(
              //     alignment: FractionalOffset.bottomCenter,
              //     child: Container(
              //       width: 150,
              //       margin: EdgeInsets.only( bottom: 20.7),
              //       child: ElevatedButton(
              //           child: Text(
              //             "Done",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 15,
              //                 fontFamily: sfpro_text_medium),
              //           ),
              //           onPressed: () {},
              //           style: ElevatedButton.styleFrom(
              //             primary: bg_blue,
              //             onPrimary: Colors.white,
              //             elevation: 0,
              //             padding:
              //             EdgeInsets.symmetric(horizontal: 0, vertical: 16),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(33),
              //               // side: BorderSide(color: skygreen_24d39e, width: 0),
              //             ),
              //           )),
              //     ),
              //   ),
              // ),
              Container(
                width: 150,
                margin: EdgeInsets.only( bottom: 20.7,top: 150),
                child: ElevatedButton(
                    child: Text(
                      "Done",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: sfpro_text_medium),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: bg_blue,
                      onPrimary: Colors.white,
                      elevation: 0,
                      padding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                        // side: BorderSide(color: skygreen_24d39e, width: 0),
                      ),
                    )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
