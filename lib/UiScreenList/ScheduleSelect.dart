import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';
import 'package:zooper_taxi_booking/model/AddressbottomSheetModel.dart';
import 'package:zooper_taxi_booking/model/TimeModel.dart';

import '../model/DealsModel.dart';

class ScheduleSelect extends StatefulWidget {
  const ScheduleSelect({Key? key}) : super(key: key);

  @override
  _ScheduleSelectState createState() => _ScheduleSelectState();
}

class _ScheduleSelectState extends State<ScheduleSelect> {
  DateTime dateFrom = DateTime(2022, 01, 01);
  DateTime dateTo = DateTime(2022, 02, 01);
  int position = 7;
  int positionOut = 7;

  List<TimeModel> loginTimeList = [
    TimeModel("12:00 Am", id: 1),
    TimeModel("01:00 Am", id: 2),
    TimeModel("02:00 Am", id: 3),
    TimeModel("12:00 Am", id: 4),
    TimeModel("01:00 Am", id: 5),
    TimeModel("02:00 Am", id: 6),
  ];
  List<TimeModel> logoutTimeList = [
    TimeModel("12:00 Pm", id: 1),
    TimeModel("01:00 Pm", id: 2),
    TimeModel("02:00 Pm", id: 3),
    TimeModel("12:00 Pm", id: 4),
    TimeModel("01:00 Pm", id: 5),
    TimeModel("02:00 Pm", id: 6),
  ];

  List<DealsModel> onDealsModel = [];
  List<DealsModel> selectedList = [];
  List<AddressbottomSheetModel> sampleData = <AddressbottomSheetModel>[];
  late int selectedRadio;

  @override
  void initState() {
    onDealsModel.clear();
    onDealsModel.add(DealsModel("Sunday"));
    onDealsModel.add(DealsModel("Monday"));
    onDealsModel.add(DealsModel("Tuesday"));
    onDealsModel.add(DealsModel("Wednesday"));
    onDealsModel.add(DealsModel("Thursday"));
    onDealsModel.add(DealsModel("Friday"));
    onDealsModel.add(DealsModel("Saturday"));


    selectedRadio = 0;
    sampleData.add(AddressbottomSheetModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Home'));
    sampleData.add(AddressbottomSheetModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Office'));
    sampleData.add(AddressbottomSheetModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Home2'));
    super.initState();
  }

  bool first = false;
  bool secound = false;
  bool thired = false;
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
                  padding: EdgeInsets.only(left: 22),
                  width: double.infinity,
                  color: Colors.blue,
                  child: Stack(
                    children: [
                      Image.asset(
                        img_logo,
                        height: 325,
                        fit: BoxFit.fitWidth,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 28,
                          ),
                          SvgPicture.asset(
                            icon_back,
                            color: Colors.white,
                            height: 15,
                            width: 21.3,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            str_hey_girals,
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontFamily: sfpro_text_bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            str_safty_some_one_waiting,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: sfpro_text_bold,
                                height: 1.3),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(0, -22, 0),
                  margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(30.0),
                          topRight: const Radius.circular(30.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 15),
                        child: Text(
                          str_setup_roster_now,
                          style: TextStyle(
                              fontFamily: sfpro_text_semibold,
                              fontSize: 19,
                              color: black_163351),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1, left: 15),
                        child: Text(
                          str_schedule_office_pickup_and_drop_with_zooper,
                          style: TextStyle(
                              fontFamily: sfpro_text_medium,
                              fontSize: 13,
                              color: gray_9d9d9d),
                        ),
                      ),
                      /*-------- Calender code here ----------*/
                      Container(
                        margin:
                            EdgeInsets.only(top: 12, left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 8),
                                      decoration: BoxDecoration(
                                          color: rect_box_e9ecec,
                                          border: Border.all(
                                              color: view_line_DEDBDE,
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                            calendar_circle,
                                            height: 32,
                                            width: 32,
                                          ),
                                          SizedBox(width: 8),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  str_from,
                                                  style: TextStyle(
                                                    color: black_163351,
                                                    fontFamily:
                                                        sfpro_text_semibold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                TextField(
                                                    focusNode:
                                                        AlwaysDisabledFocusNode(),
                                                    decoration:
                                                        new InputDecoration(
                                                      isDense: true,
                                                      contentPadding:
                                                          EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0,
                                                                  vertical:
                                                                      0),
                                                      hintText:
                                                          '${dateFrom.day}/${dateFrom.month}/${dateFrom.year}',
                                                      border:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                    ),
                                                    style: TextStyle(
                                                      color: black_163351,
                                                      fontFamily:
                                                          sfpro_text_medium,
                                                      fontSize: 14,
                                                    ),
                                                    onTap: () {
                                                      selectDate(context);
                                                    }),
                                              ],
                                            ),
                                            flex: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 8),
                                      decoration: BoxDecoration(
                                          color: rect_box_e9ecec,
                                          border: Border.all(
                                              color: view_line_DEDBDE,
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            calendar_circle,
                                            height: 32,
                                            width: 32,
                                          ),
                                          SizedBox(width: 8),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  str_to,
                                                  style: TextStyle(
                                                    color: black_163351,
                                                    fontFamily:
                                                        sfpro_text_semibold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                TextField(
                                                    focusNode:
                                                        AlwaysDisabledFocusNode(),
                                                    decoration:
                                                        new InputDecoration(
                                                      isDense: true,
                                                      contentPadding:
                                                          EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0,
                                                                  vertical:
                                                                      0),
                                                      hintText:
                                                          '${dateTo.day}/${dateTo.month}/${dateTo.year}',
                                                      border:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                    ),
                                                    style: TextStyle(
                                                      color: black_163351,
                                                      fontFamily:
                                                          sfpro_text_medium,
                                                      fontSize: 14,
                                                    ),
                                                    onTap: () {
                                                      selectDateTo(context);
                                                    }),
                                              ],
                                            ),
                                            flex: 1,
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
                      Container(
                        margin: EdgeInsets.only(top: 14, left: 18),
                        child: Text(
                          str_login_time,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: sfpro_text_bold,
                              color: black_163351),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      /*login listview*/
                      Container(
                        height: 36,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          primary: false,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                          padding: EdgeInsets.only(left: 18, right: 24),
                          itemCount: loginTimeList.length,
                          itemBuilder: (context, i) => GestureDetector(
                            onTap: () {
                              setState(() {
                                position = loginTimeList[i].id;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: position == loginTimeList[i].id
                                        ? pink_ff5465
                                        : gray_9d9d9d,
                                    width: 0.8),
                                borderRadius: BorderRadius.circular(33),
                                color: position == loginTimeList[i].id
                                    ? light_pink_ff5465
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  loginTimeList[i].title,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: sfpro_text_regular,
                                      color: position == loginTimeList[i].id
                                          ? pink_ff5465
                                          : grey_96a6a3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, left: 18),
                        child: Text(
                          str_logout_time,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: sfpro_text_bold,
                              color: black_163351),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      /*logout listview*/
                      Container(
                        height: 36,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          primary: false,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                          padding: EdgeInsets.only(left: 18, right: 24),
                          itemCount: logoutTimeList.length,
                          itemBuilder: (context, i) => GestureDetector(
                            onTap: () {
                              setState(() {
                                positionOut = logoutTimeList[i].id;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        positionOut == logoutTimeList[i].id
                                            ? pink_ff5465
                                            : gray_9d9d9d,
                                    width: 0.8),
                                borderRadius: BorderRadius.circular(33),
                                color: positionOut == logoutTimeList[i].id
                                    ? light_pink_ff5465
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  logoutTimeList[i].title,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: sfpro_text_regular,
                                      color: positionOut ==
                                              logoutTimeList[i].id
                                          ? pink_ff5465
                                          : grey_96a6a3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, left: 18),
                        child: Text(
                          str_your_Off_days,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: sfpro_text_bold,
                              color: black_163351),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 18, top: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  first = true;
                                  secound = false;
                                  thired = false;
                                  isLayoutFirst = false;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    first
                                        ? radio_active_button
                                        : img_radio_inactive_button,
                                    width: 18,
                                    height: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    str_week_Off_days,
                                    style: TextStyle(
                                        fontFamily: sfpro_text_regular,
                                        color: gray_868590,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  first = false;
                                  secound = true;
                                  thired = false;
                                  isLayoutFirst = true;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    secound
                                        ? radio_active_button
                                        : img_radio_inactive_button,
                                    width: 18,
                                    height: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    str_other_days,
                                    style: TextStyle(
                                        fontFamily: sfpro_text_regular,
                                        color: gray_868590,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Visibility(
                              visible: isLayoutFirst,
                              child: Container(
                                height: 36,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  primary: false,
                                  shrinkWrap: true,
                                  itemCount: onDealsModel.length,
                                  itemBuilder: (context, i) {
                                    return Container(
                                      margin: EdgeInsets.only(right: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(
                                            () {
                                              if (selectedList.contains(
                                                  onDealsModel[i])) {
                                                selectedList.remove(
                                                    onDealsModel[i]);
                                              } else {
                                                selectedList
                                                    .add(onDealsModel[i]);
                                              }
                                            },
                                          );
                                          print(selectedList.length);
                                          print(onDealsModel.length);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(33)),
                                              border: Border.all(
                                                  color:
                                                      selectedList.contains(
                                                              onDealsModel[
                                                                  i])
                                                          ? pink_ff5465
                                                          : gray_9d9d9d,
                                                  width: 1),
                                              color: selectedList.contains(
                                                      onDealsModel[i])
                                                  ? light_pink_ff5465
                                                  : Colors.white),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize:
                                                  MainAxisSize.max,
                                              children: [
                                                Image.asset(
                                                  selectedList.contains(
                                                          onDealsModel[i])
                                                      ? img_tick_pink
                                                      : img_tick_gray,
                                                  width: 16.5,
                                                  height: 16.5,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  onDealsModel[i].title,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: selectedList
                                                              .contains(
                                                                  onDealsModel[
                                                                      i])
                                                          ? pink_ff5465
                                                          : grey_96a6a3,
                                                      fontFamily:
                                                          sfpro_text_regular),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  first = false;
                                  secound = false;
                                  thired = true;
                                  isLayoutFirst = false;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    thired
                                        ? radio_active_button
                                        : img_radio_inactive_button,
                                    width: 18,
                                    height: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    str_no_week_off,
                                    style: TextStyle(
                                        fontFamily: sfpro_text_regular,
                                        color: gray_868590,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 22, left: 24, right: 24, bottom: 20.7),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              child: Text(
                                str_continue,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: sfpro_text_medium),
                              ),
                              onPressed: () {
                                SelectLoacation(context);
                              },
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
                    ],
                  ),
                )
              ],
            ),
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
  void selectDateTo(BuildContext context) async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2040),
    );
    if (newDate == null) return;
    setState(() => dateTo = newDate);
  }

  void SelectLoacation(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
              padding: EdgeInsets.only(bottom: 15),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0))


              ),
              child: Wrap(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 18, right: 18, top: 35),
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
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 18, right: 18),
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
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        height: 1,
                        color: gray_ebebeb,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 18),
                        child: Text(
                          "Select Location",
                          style: TextStyle(
                              fontFamily: sfpro_text_bold,
                              fontSize: 19,
                              color: black_163351),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 18),
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
                          margin: EdgeInsets.only(left: 18, right: 18, top: 20),
                          decoration: BoxDecoration(
                              border: Border.all(color: gray_ebebeb, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: silver_f5f5f5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                img_location,
                                height: 18,
                                width: 15,
                                color: light_green_77c6be,
                              ),
                              SizedBox(
                                width: 8,
                              ),
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
                                    SizedBox(
                                      height: 5,
                                    ),
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
                              Image.asset(
                                img_arrow_spinner,
                                height: 15,
                                width: 12,
                                color: black_163351,
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //  selectPickupLocation(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.only(left: 18, right: 18, top: 20),
                          decoration: BoxDecoration(
                              border: Border.all(color: gray_ebebeb, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: silver_f5f5f5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                img_office_bag,
                                height: 18,
                                width: 15,
                                color: pink_ff5465,
                              ),
                              SizedBox(
                                width: 8,
                              ),
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
                                    SizedBox(
                                      height: 5,
                                    ),
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
                              Image.asset(
                                img_arrow_spinner,
                                height: 15,
                                width: 12,
                                color: black_163351,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 18, right: 18, top: 30,bottom: 10),
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
                    ],
                  )
                ],
              ));
        });
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

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
