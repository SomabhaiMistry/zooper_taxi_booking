import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class PopupModifyRide extends StatefulWidget {
  const PopupModifyRide({Key? key}) : super(key: key);

  @override
  _PopupModifyRideState createState() => _PopupModifyRideState();
}

class _PopupModifyRideState extends State<PopupModifyRide> {
  DateTime dateFrom = DateTime(2022, 01, 01);

  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 0, left: 22, right: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      str_modify_ride,
                      style: TextStyle(
                          fontFamily: sfpro_text_bold,
                          color: black_163351,
                          fontSize: 14),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 20,
                      color: black_163351,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                str_date,
                style: TextStyle(
                    fontFamily: sfpro_text_medium,
                    color: gray_9d9d9d,
                    fontSize: 13),
              ),

              SizedBox(
                height: 4,
              ),

              TextField(
                  focusNode: AlwaysDisabledFocusNode(),
                  decoration: new InputDecoration(
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    hintText:
                        '${dateFrom.day}/${dateFrom.month}/${dateFrom.year}',
                    hintStyle: Theme.of(context).textTheme.caption?.copyWith(
                          fontSize: 13,
                          fontFamily: sfpro_text_semibold,
                          color: black_163351,
                        ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: black_163351,
                    fontFamily: sfpro_text_semibold,
                    fontSize: 13,
                  ),
                  onTap: () {
                    selectDate(context);
                  }),

              // InkWell(
              //   calender(),
              //   child: Text("Tue, 15 Jun",style: TextStyle(
              //       fontFamily: sfpro_text_semibold,color:black_163351 ,fontSize:13),),
              // ),
              SizedBox(
                height: 12,
              ),
              Text(
                str_login,
                style: TextStyle(
                    fontFamily: sfpro_text_medium,
                    color: gray_9d9d9d,
                    fontSize: 13),
              ),

              SizedBox(
                height: 4,
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        str_time,
                        style: TextStyle(
                            fontFamily: sfpro_text_semibold,
                            color: black_163351,
                            fontSize: 13),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 20,
                      color: black_163351,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                color: gray_e8e8e8,
                height: 0.8,
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                str_pickup_drop_location,
                style: TextStyle(
                    fontFamily: sfpro_text_bold,
                    color: black_163351,
                    fontSize: 14),
              ),
              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        home,
                        height: 18,
                        width: 18,
                        color: pink_ff5465,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      DottedLine(
                        direction: Axis.vertical,
                        lineLength: 55,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: silver_868590,
                        dashRadius: 0.0,
                        dashGapLength: 4.0,
                        dashGapColor: Colors.transparent,
                        dashGapRadius: 0.0,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            str_home,
                            style: TextStyle(
                                fontFamily: sfpro_text_regular,
                                color: gray_9d9d9d,
                                fontSize: 12),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            transform: Matrix4.translationValues(0, -10, 0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: new Text(
                                  str_select_home_address,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: sfpro_text_medium,
                                      color: black_163351),
                                ),
                                value: dropdownValue,
                                isExpanded: true,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 20,
                                  color: black_163351,
                                ),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: sfpro_text_medium,
                                    color: black_163351),
                                // underline: Container(
                                //   height: 2,
                                //   color: Colors.deepPurpleAccent,
                                // ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Three',
                                  'Four',
                                  'Five',
                                  'Six',
                                  'Seven'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, -8, 0),
                            color: gray_e8e8e8,
                            height: 0.8,
                          ),
                        ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    office,
                    height: 18,
                    width: 18,
                    color: green_008000,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            str_work,
                            style: TextStyle(
                                fontFamily: sfpro_text_regular,
                                color: gray_9d9d9d,
                                fontSize: 12),
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, -10, 0),
                            margin: EdgeInsets.only(right: 5),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: new Text(
                                  str_select_work_address,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: sfpro_text_medium,
                                      color: black_163351),
                                ),
                                value: dropdownValue,
                                isExpanded: true,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 20,
                                  color: black_163351,
                                ),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: sfpro_text_medium,
                                    color: black_163351),
                                // underline: Container(
                                //   height: 2,
                                //   color: Colors.deepPurpleAccent,
                                // ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Three',
                                  'Four',
                                  'Five',
                                  'Six',
                                  'Seven'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: Text(
                            str_cancel,
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.3),
                              side: BorderSide(color: gray_ebebeb, width: 1),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 8.7,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: Text(
                            str_save,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: sfpro_text_medium),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: pink_ff5465,
                            onPrimary: Colors.white,
                            elevation: 0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.3),
                              // side: BorderSide(color: skygreen_24d39e, width: 0),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void selectDate(BuildContext context) async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2040),
    );
    if (newDate == null) return;
    setState(() => dateFrom = newDate);
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
