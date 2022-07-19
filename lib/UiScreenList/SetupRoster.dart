import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';
import 'package:zooper_taxi_booking/model/ScheduledRoasterModel.dart';

class SetupRoster extends StatefulWidget {
  const SetupRoster({Key? key}) : super(key: key);

  @override
  _SetupRosterState createState() => _SetupRosterState();
}

class _SetupRosterState extends State<SetupRoster> {
  bool penLogin = false;
  bool penLogout = false;
  bool isModifyDataLogin = false;
  bool isModifyDataLogout = false;

  List<ScheduledRoasterModel> scheduledroasterModel = [
    ScheduledRoasterModel(
      "01 Dec",
      "Monday",
      "9:00 AM",
      "9:00 PM",
    ),
    ScheduledRoasterModel(
      "02 Dec",
      "Tuesday",
      "9:00 AM",
      "9:00 PM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
                      str_your_schedule_roaster,
                      style: TextStyle(
                          fontFamily: sfpro_text_semibold,
                          fontSize: 16.7,
                          color: black_163351),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  str_check_your_schedule_roaster,
                  style: TextStyle(
                      fontFamily: sfpro_text_medium,
                      fontSize: 13,
                      color: gray_9d9d9d),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.all(0),
                itemCount: scheduledroasterModel.length,
                itemBuilder: (context, i) => Container(
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 12),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: view_line_DEDBDE, width: 1)),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              scheduledroasterModel[i].tvDate,
                              style: TextStyle(
                                  color: black_163351,
                                  fontFamily: sfpro_text_bold,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Text(
                              scheduledroasterModel[i].tvDay,
                              style: TextStyle(
                                  color: gray_9d9d9d,
                                  fontFamily: sfpro_text_regular,
                                  fontSize: 13),
                            ),
                          ],
                        ),

                        SizedBox(
                          width: 12,
                        ),

                        /*-- line --*/
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 5,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: blue_1f78e7,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    topRight: const Radius.circular(10.0)),
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 5,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: pink_ff5465,
                                  borderRadius: new BorderRadius.only(
                                    bottomLeft: const Radius.circular(10.0),
                                    bottomRight: const Radius.circular(10.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        /*-- line --*/
                        SizedBox(
                          width: 12,
                        ),

                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3,),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    penLogin = true;
                                    penLogout = false;
                                    isModifyDataLogin = true;
                                    isModifyDataLogout = false;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      str_login,
                                      style: TextStyle(
                                          color: black_163351,
                                          fontFamily: sfpro_text_medium,
                                          fontSize: 15),
                                    ),

                                    SizedBox(width: 25,),

                                    Expanded(
                                      child: Text(
                                        scheduledroasterModel[i].TVloginTime,
                                        style: TextStyle(
                                            color: black_163351,
                                            fontFamily: sfpro_text_medium,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Image.asset(
                                      penLogin ? img_pen_fill : img_pen_b,
                                      height: 15,
                                      width: 15,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              /*------- Modify and delete tag 1st*/
                              Visibility(
                                visible: isModifyDataLogin,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 6),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(7),
                                                border: Border.all(
                                                    color: view_line_DEDBDE,
                                                    width: 1)),
                                            child: Center(
                                              child: Text(
                                                str_modify,
                                                style: TextStyle(
                                                    fontFamily: sfpro_text_medium,
                                                    fontSize: 15,
                                                    color: blue_1f78e7),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 6),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(7),
                                                border: Border.all(
                                                    color: view_line_DEDBDE,
                                                    width: 1)),
                                            child: Center(
                                              child: Text(
                                                str_cancel.toUpperCase(),
                                                style: TextStyle(
                                                    fontFamily: sfpro_text_medium,
                                                    fontSize: 15,
                                                    color: pink_ff5465),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child: Divider(
                                          color: transparent,
                                          thickness: 0.8,
                                        )),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 0,
                              ),
                              /*2nd*/
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    penLogin = false;
                                    penLogout = true;
                                    isModifyDataLogin = false;
                                    isModifyDataLogout = true;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      str_logout,
                                      style: TextStyle(
                                          color: black_163351,
                                          fontFamily: sfpro_text_medium,
                                          fontSize: 15),
                                    ),
                                    SizedBox(width: 14,),
                                    Expanded(
                                      child: Text(
                                        scheduledroasterModel[i].tvLogoutTime,
                                        style: TextStyle(
                                            color: black_163351,
                                            fontFamily: sfpro_text_medium,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Image.asset(
                                      penLogout ? img_pen_fill : img_pen_b,
                                      height: 15,
                                      width: 15,
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 12,
                              ),
                              /*------- Modify and delete tag 2nd*/

                              Visibility(
                                visible: isModifyDataLogout,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(height: 12,),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 6),

                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(7),
                                              border: Border.all(
                                                  color: view_line_DEDBDE,
                                                  width: 1)),
                                          child: Center(
                                            child: Text(
                                              str_modify,
                                              style: TextStyle(
                                                  fontFamily: sfpro_text_medium,
                                                  fontSize: 15,
                                                  color: blue_1f78e7),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 6),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(7),
                                              border: Border.all(
                                                  color: view_line_DEDBDE,
                                                  width: 1)),
                                          child: Center(
                                            child: Text(
                                              str_cancel.toUpperCase(),
                                              style: TextStyle(
                                                  fontFamily: sfpro_text_medium,
                                                  fontSize: 15,
                                                  color: pink_ff5465),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
