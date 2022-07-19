import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';
import 'package:zooper_taxi_booking/model/AddressTypeModel.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);

  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  List<AddressTypeModel> sampleData = <AddressTypeModel>[];
  // Declare this variable
  late int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    sampleData.add(AddressTypeModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Home'));
    sampleData.add(AddressTypeModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Office'));
    sampleData.add(AddressTypeModel(selected: false, tvAddress: 'East Avenue,\nfalance view soc, south Mumbai,\nMaharastra, india, 400001', tvType: 'Home2'));
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
                      str_my_address,
                      style: TextStyle(
                          fontFamily: sfpro_text_semibold,
                          fontSize: 16.7,
                          color: black_163351),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 29,
              ),

              ListView.builder(
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.all(0),
                itemCount: sampleData.length,
                itemBuilder: (context, i) => Container(
                  margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
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
                        child: new AddressType(sampleData[i]),
                      )
                    ],
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
