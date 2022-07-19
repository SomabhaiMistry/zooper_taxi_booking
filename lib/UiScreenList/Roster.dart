import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/model/AddressbottomSheetModel.dart';

class Roster extends StatefulWidget {
  const Roster({Key? key}) : super(key: key);

  @override
  _RosterState createState() => _RosterState();
}

class _RosterState extends State<Roster> {
  List<AddressbottomSheetModel> sampleData = <AddressbottomSheetModel>[];
  // Declare this variable
  late int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    sampleData.add(AddressbottomSheetModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Home'));
    sampleData.add(AddressbottomSheetModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Office'));
    sampleData.add(AddressbottomSheetModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Home2'));
  }
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
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 21),
                decoration: BoxDecoration(boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.20))
                ], color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      icon_back,
                      height: 15,
                      width: 21.3,
                    ),
                    SizedBox(
                      width: 17.4,
                    ),
                    Text(
                      "Roster",
                      style: TextStyle(
                          fontFamily: sfpro_text_semibold,
                          fontSize: 16.7,
                          color: black_163351),
                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 15,right: 15,top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date :",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: sfpro_text_bold,
                                color: black_163351),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          FittedBox(
                            child: Text(
                              "1/2/22 to 25/2/22",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: sfpro_text_regular,
                                  color: gray_9d9d9d),
                            ),
                          ),
                        ],
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login Time :",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: sfpro_text_bold,
                                color: black_163351),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "8:00 Am",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: sfpro_text_regular,
                                color: gray_9d9d9d),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Off Days :",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: sfpro_text_bold,
                                color: black_163351),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Week Off Sun & Sat",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: sfpro_text_regular,
                                color: gray_9d9d9d),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Logout Time :",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: sfpro_text_bold,
                                color: black_163351),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "8:00 Pm",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: sfpro_text_regular,
                                color: gray_9d9d9d),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),



              // Container(
              //   margin: EdgeInsets.only(top: 25, left: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Date :",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: sfpro_text_bold,
              //             color: black_163351),
              //       ),
              //       SizedBox(
              //         width: 3,
              //       ),
              //       Text(
              //         "1 Feb 2022 to 25 Feb 2022",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: sfpro_text_regular,
              //             color: gray_9d9d9d),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 12, left: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Login Time :",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: sfpro_text_bold,
              //             color: black_163351),
              //       ),
              //       SizedBox(
              //         width: 6,
              //       ),
              //       Text(
              //         "8:00 Am",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: sfpro_text_regular,
              //             color: gray_9d9d9d),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 12, left: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Loout Time :",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: sfpro_text_bold,
              //             color: black_163351),
              //       ),
              //       SizedBox(
              //         width: 6,
              //       ),
              //       Text(
              //         "8:00 Pm",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: sfpro_text_regular,
              //             color: gray_9d9d9d),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 12, left: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Off Days :",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: sfpro_text_bold,
              //             color: black_163351),
              //       ),
              //       SizedBox(
              //         width: 6,
              //       ),
              //       Text(
              //         "Week Off Sun & Sat",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: sfpro_text_regular,
              //             color: gray_9d9d9d),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 1,
                color: gray_ebebeb,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "Select Location",
                  style: TextStyle(
                      fontFamily: sfpro_text_bold,
                      fontSize: 19,
                      color: black_163351),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 15),
                child: Text(
                  "Schedule your office pickup and drop with Zooper",
                  style: TextStyle(
                      fontFamily: sfpro_text_regular,
                      fontSize: 12,
                      color: gray_9d9d9d),
                ),
              ),

              InkWell(
                onTap: () {
                  selectPickupLocation(context);
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: gray_ebebeb, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: silver_f5f5f5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Image.asset(img_location, height: 18,
                        width: 15,
                        color: light_green_77c6be,),
                      SizedBox(width: 8,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Pickup Location",
                              style: TextStyle(
                                  fontFamily: sfpro_text_bold,
                                  fontSize: 14,
                                  color: black_163351),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "Choose Location",
                              style: TextStyle(
                                  fontFamily: sfpro_text_medium,
                                  fontSize: 13,
                                  color: gray_9d9d9d),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(img_arrow_spinner, height: 15,
                        width: 12,
                        color: black_163351,)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  selectPickupLocation(context);
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: gray_ebebeb, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: silver_f5f5f5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Image.asset(img_office_bag, height: 18,
                        width: 15,
                        color: pink_ff5465,),
                      SizedBox(width: 8,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Drop Location",
                              style: TextStyle(
                                  fontFamily: sfpro_text_bold,
                                  fontSize: 14,
                                  color: black_163351),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "Choose Location",
                              style: TextStyle(
                                  fontFamily: sfpro_text_medium,
                                  fontSize: 13,
                                  color: gray_9d9d9d),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(img_arrow_spinner, height: 15,
                        width: 12,
                        color: black_163351,)
                    ],
                  ),
                ),
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
                            "Confirm",
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

  void selectPickupLocation(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
              padding: EdgeInsets.only(bottom: 0),
              decoration: new BoxDecoration(
                //   color: forDialog ? Color(0xFF737373) : Colors.white,
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0))),
              child: Wrap(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 18,top: 30),
                        child: Text(
                          "Select Pickup Location",
                          style: TextStyle(
                              fontFamily: sfpro_text_medium,
                              fontSize: 16,
                              color: black_163351),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        padding: EdgeInsets.all(0),
                        itemCount: sampleData.length,
                        itemBuilder: (context, i) => Container(
                          margin: EdgeInsets.only(left: 15,right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                //highlightColor: Colors.red,
                                //splashColor: Colors.blueAccent,
                                onTap: () {
                                  setState(() {
                                    sampleData.forEach((element) => element.selected = false);
                                    sampleData[i].selected = true;
                                  });
                                },
                                child: new AddressModelType(sampleData[i]),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ));
        });
  }

}
