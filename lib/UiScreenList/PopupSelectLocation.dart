import 'package:flutter/material.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/model/LikeModel.dart';

class PopupSelectLocation extends StatefulWidget {
  const PopupSelectLocation({Key? key}) : super(key: key);

  @override
  _PopupSelectLocationState createState() => _PopupSelectLocationState();
}

class _PopupSelectLocationState extends State<PopupSelectLocation> {
  List<LikeModel> modelClassLove = [
    LikeModel("ab"),
    LikeModel("125"),
    LikeModel("ab"),
    LikeModel("ab"),
    LikeModel("125"),
    LikeModel("ab"),
    LikeModel("ab"),
    LikeModel("125"),
    LikeModel("ab"),
  ];

  String strSelectedAddress = "Select Home Address";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    transform: Matrix4.translationValues(0, -20, 0),
                    child: Text(
                      "Select Home Address",
                      style: TextStyle(
                          fontFamily: sfpro_text_semibold,
                          fontSize: 20,
                          color: black_163351),
                    ),
                  ),
                ),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: modelClassLove.length,
                    itemBuilder: (context, i) => Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  modelClassLove[i].title,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: sfpro_text_semibold,
                                    color: black_163351,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 1,
                                color: gray_9d9d9d,
                              )
                            ],
                          ),
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
