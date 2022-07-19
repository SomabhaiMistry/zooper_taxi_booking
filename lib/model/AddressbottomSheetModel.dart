import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class AddressbottomSheetModel {
  bool selected;
  String tvType,tvAddress;

  AddressbottomSheetModel({required this.selected, required this.tvType,required this.tvAddress});

}

class AddressModelType extends StatelessWidget {
  final AddressbottomSheetModel model;
  AddressModelType(this.model);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 15.7,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            this.model.selected
                ? Image.asset(radio_active_button,height: 20,width: 20,color: pink_ff5465,)
                : Image.asset(radio_on_button,height: 20,width: 20,color: gray_e8e8e8,),

            SizedBox(width: 12.3,),

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
                      this.model.selected
                          ? Image.asset(star_fill,height: 20,width: 20,color: yellow_FFC800,)
                          : Image.asset(star_empty,height: 20,width: 20,color: gray_9d9d9d,),
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
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      width: double.infinity,
                      child: Divider(
                        color: view_line_DEDBDE,
                        thickness: 0.8,
                      )),
                ],
              ),
            )
          ],
        ),

      ],
    );
  }
}