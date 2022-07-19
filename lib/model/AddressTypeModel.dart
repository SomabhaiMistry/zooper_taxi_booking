import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';

class AddressTypeModel {
  bool selected;
  String tvType,tvAddress;
  AddressTypeModel({required this.selected, required this.tvType,required this.tvAddress});
}

class AddressType extends StatelessWidget {
  final AddressTypeModel model;
  AddressType(this.model);
  int myposition = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: gray_ebebeb, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Colors.white,
              // color:myposition == model.selected ? gray_ebebeb : Colors.white,
            ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              this.model.selected
                  ? Image.asset(radio_active_button,height: 20,width: 20,color: pink_ff5465,)
                  : Image.asset(radio_on_button,height: 20,width: 20,color: gray_e8e8e8,),

              SizedBox(width: 12.5,),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          model.tvType,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: sfpro_text_bold,
                              color: black_163351),
                        ),
                        // this.model.selected
                        //     ? Image.asset(star_fill,height: 20,width: 20,color: yellow_FFC800,)
                        //     : Image.asset(star_empty,height: 20,width: 20,color: gray_9d9d9d,),

                         Image.asset(star_empty,height: 15,width: 15,color: gray_9d9d9d,)
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      model.tvAddress,
                      style: TextStyle(
                          fontSize: 13.3,
                          fontFamily: sfpro_text_regular,
                          color: gray_9d9d9d),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(img_edit,height: 17,width: 17,color: blue_1f78e7,),
                        SizedBox(
                          width: 12,
                        ),
                        Image.asset(img_delete,height: 17,width: 17,color: pink_ff5465,)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}