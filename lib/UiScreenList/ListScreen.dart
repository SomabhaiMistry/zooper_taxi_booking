import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/UiScreenList/ViewPagerSlider.dart';
import 'package:zooper_taxi_booking/UiScreenList/Otp.dart';
import 'package:zooper_taxi_booking/UiScreenList/OtpTesting.dart';

import 'AddAddress.dart';
import 'AllSet.dart';
import 'Congrates.dart';
import 'EmailOtpVerification.dart';
import 'EmailVerification.dart';
import 'MyAddress.dart';
import 'MyProfile.dart';
import 'MyProfileEdit.dart';
import 'PagerMove.dart';
import 'PhoneVerification.dart';
import 'PopupDialog.dart';
import 'Rating.dart';
import 'Record.dart';
import 'Roster.dart';
import 'ScheduleSelect.dart';
import 'SetUpPin.dart';
import 'SetupRoster.dart';
import 'SuccessPage.dart';
import 'WalkthroughPager.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor:statusbar_f8f8f8, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.light, //navigation bar icons' color
    ));
    return SafeArea(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
            title: const Text('1.WalkthroughPager Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ViewPagerSlider();
              }));
            },
          ),
          ListTile(
            title: const Text('2.EmailVerification Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const EmailVerification();
              }));
            },
          ),
          ListTile(
            title: const Text('3.EmailOtpVerification Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const EmailOtpVerification();
              }));
            },
          ),
          ListTile(
            title: const Text('4.Congrates Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Congrates();
              }));
            },
          ),
          ListTile(
            title: const Text('5.SetUpPin Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SetUpPin();
              }));
            },
          ),
          ListTile(
            title: const Text('6.MyProfileEdit Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const MyProfileEdit();
              }));
            },
          ),
          ListTile(
            title: const Text('7.MyProfile Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const MyProfile();
              }));
            },
          ),
          ListTile(
            title: const Text('8.PhoneVerification Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const PhoneVerification();
              }));
            },
          ),
          ListTile(
            title: const Text('9.AddAddress Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AddAddress();
              }));
            },
          ),
          ListTile(
            title: const Text('10.MyAddress Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const MyAddress();
              }));
            },
          ),
          ListTile(
            title: const Text('11.AllSet Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AllSet();
              }));
            },
          ),
          ListTile(
            title: const Text('12.Record Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Record();
              }));
            },
          ),
          ListTile(
            title: const Text('13.PopupDialog 3 Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  PopupDialog();
              }));
            },
          ),
          ListTile(
            title: const Text('14.Rating Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  Rating();
              }));
            },
          ),
          ListTile(
            title: const Text('15.SetupRoster Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  SetupRoster();
              }));
            },
          ),
          ListTile(
            title: const Text('16.ScheduleSelect Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  ScheduleSelect();
              }));
            },
          ),
          ListTile(
            title: const Text('17.SuccessPage Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  SuccessPage();
              }));
            },
          ),
          ListTile(
            title: const Text('18.Testing Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  ViewPagerSlider();
              }));
            },
          ),
          ListTile(
            title: const Text('19.Otp Demo Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  OtpTesting();
              }));
            },
          ),
          ListTile(
            title: const Text('20.PagerMove Screen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  ViewPagerSlider();
              }));
            },
          ),
        ]).toList(),
      )),
    ));
  }
}
