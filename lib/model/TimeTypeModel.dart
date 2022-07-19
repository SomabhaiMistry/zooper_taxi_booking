import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';

class TimeTypeModel {
  bool selected;
  String tvime;

  TimeTypeModel({required this.selected, required this.tvime});
}

class TimeType extends StatelessWidget {
  final TimeTypeModel model;

  TimeType(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 22, bottom: 15, top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 6,
            blurRadius: 10,
            offset: Offset(1, 4), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 18),
          child: Text(
            model.tvime,
            style: TextStyle(
                fontSize: 15,
                color: black_163351,
                fontFamily: sfpro_text_medium),
          )),
    );
  }
}
