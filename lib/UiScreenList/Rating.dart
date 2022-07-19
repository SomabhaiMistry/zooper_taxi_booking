import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';
import 'package:zooper_taxi_booking/model/LikeNotModel.dart';

import '../model/DealsModel.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  List<DealsModel> onDealsModel = [];
  List<DealsModel> selectedList = [];

  List<LikeNotModel> notLikeModel = [];
  List<LikeNotModel> notselectedList = [];
  @override
  void initState() {
    onDealsModel.clear();
    onDealsModel.add( DealsModel("Services"));
    onDealsModel.add( DealsModel("Quick Routes"));
    onDealsModel.add( DealsModel("Safety"));
    onDealsModel.add( DealsModel("App Experience"));
    onDealsModel.add( DealsModel("Navigation"));
    onDealsModel.add( DealsModel("Other"));
    super.initState();

    notLikeModel.clear();
    notLikeModel.add( LikeNotModel("Driving"));
    notLikeModel.add( LikeNotModel("Professionalism"));
    notLikeModel.add( LikeNotModel("Not on Time"));
    notLikeModel.add( LikeNotModel("Route Taken"));
    notLikeModel.add( LikeNotModel("Car Condition"));
    notLikeModel.add( LikeNotModel("Other"));
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.light, //navigation bar icons' color
    ));
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 6) / 6;
    final double itemWidth = size.width / 1;

    double? _ratingValue;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                  height: 210,
                    color: btn_black_0b0b0b,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.5,),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                               SvgPicture.asset(
                                 icon_back,
                                 height: 15,
                                 width: 21.3,
                                 color: Colors.white,
                               ),

                               Container(
                                 width: double.infinity,
                                 child: Center(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(str_rate_your,style: TextStyle(
                                           color: Colors.white,fontFamily: sfpro_text_medium,fontSize: 28
                                       ),),
                                       SizedBox(width: 5,),
                                       Text(str_ride,style: TextStyle(
                                           color: Colors.white,fontFamily: sfpro_text_bold,fontSize: 28
                                       ),),
                                     ],
                                   ),
                                 ),
                               ),

                            ],
                          ),
                          SizedBox(height: 30,),
                          Text(str_day_timing,style: TextStyle(
                              fontSize: 18,color: Colors.white,fontFamily: sfpro_text_medium
                          ),),
                          SizedBox(height: 12,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  SizedBox(height: 3,),
                                  Container(
                                    height: 8,width: 8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),

                                  ),
                                  DottedLine(
                                    direction: Axis.vertical,
                                    lineLength: 18,
                                    lineThickness: 1.0,
                                    dashLength: 4.0,
                                    dashColor: Colors.white,
                                    dashRadius: 0.0,
                                    dashGapLength: 4.0,
                                    dashGapColor: Colors.transparent,
                                    dashGapRadius: 0.0,
                                  ),
                                  Container(
                                    height: 8,width: 8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),

                                  ),

                                ],
                              ),
                              SizedBox(width: 8,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(str_address1,style: TextStyle(
                                        fontSize: 13,color: Colors.white,fontFamily: sfpro_text_regular
                                    ),),
                                    SizedBox(height: 6,),
                                    Text(str_address2,style: TextStyle(
                                        fontSize: 13,color: Colors.white,fontFamily: sfpro_text_regular
                                    ),),

                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(str_address3,style: TextStyle(
                                      fontSize: 13,color: Colors.white,fontFamily: sfpro_text_regular
                                  ),),
                                  SizedBox(height: 6,),
                                  Text(str_address4,style: TextStyle(
                                      fontSize: 13,color: Colors.white,fontFamily: sfpro_text_regular
                                  ),),

                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                  SizedBox(height: 20,),
                  Center(
                    child: Text(str_good_but_could_be_improved,style: TextStyle(
                        fontSize: 16,color:black_163351,fontFamily: sfpro_text_bold
                    ),),
                  ),
                  SizedBox(height: 6,),

                  Center(
                    child: RatingBar(
                        itemSize: 35,
                        initialRating: 0,
                        glowColor: Colors.transparent,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        ratingWidget: RatingWidget(

                          full: Image.asset(star_fill,width: 50,height: 50,color: yellow_FFC800,),
                            // full: const Icon(Icons.star, color:yellow_FFC800),
                           half: Image.asset(star_fill,width: 50,height: 50,color: yellow_FFC800,),
                            // half: const Icon(Icons.star_half, color:yellow_FFC800,),
                            empty:Image.asset(star_empty,width: 50,height: 50,color: gray_868590,)),
                            // empty: const Icon(Icons.star_outline, color:gray_868590,)),
                        onRatingUpdate: (value) {
                          setState(() {
                            _ratingValue = value;
                          });
                        }),
                  ),

                  //
                  // Container(
                  //   height: 1,
                  //   color: gray_e8e8e8,
                  //   margin: EdgeInsets.only(left: 30,right: 30,top: 25),
                  // ),

                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    child: Text(str_what_did_you_not_like,style: TextStyle(
                        fontSize: 15,color:black_163351,fontFamily: sfpro_text_bold
                    ),),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15,right: 3,top: 15),
                    child: GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(0),
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: (itemWidth / itemHeight),
                          mainAxisSpacing: 0.0,
                          crossAxisSpacing: 0.0),
                      itemCount: notLikeModel.length,
                      itemBuilder: (context, i) {
                        return Container(
                          margin: EdgeInsets.only(right: 12,bottom: 9),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if(notselectedList.contains(notLikeModel[i])){
                                  notselectedList.remove(notLikeModel[i]);
                                }
                                else{
                                  notselectedList.add(notLikeModel[i]);
                                }
                              },);
                              print(notselectedList.length);
                              print(notLikeModel.length);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0)
                                  ),
                                  border: Border.all(
                                      color:notselectedList.contains(notLikeModel[i]) ? pink_ff5465 : view_line_DEDBDE,
                                      width: 1
                                  ),
                                  color: Colors.white
                              ),
                              child: Center(
                                child: Text(notLikeModel[i].title,style: TextStyle(
                                    fontFamily: sfpro_text_medium,
                                    fontSize: 12.5,
                                    color:notselectedList.contains(notLikeModel[i]) ? pink_ff5465 : black_163351
                                ),),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    child: Text(str_what_did_you_like,style: TextStyle(
                        fontSize: 15,color:black_163351,fontFamily: sfpro_text_bold
                    ),),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15,right: 3,top: 15),
                    child: GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(0),
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: (itemWidth / itemHeight),
                          mainAxisSpacing: 0.0,
                          crossAxisSpacing: 0.0),
                      itemCount: onDealsModel.length,
                      itemBuilder: (context, i) {
                        return Container(
                          margin: EdgeInsets.only(right: 12,bottom: 9),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if(selectedList.contains(onDealsModel[i])){
                                  selectedList.remove(onDealsModel[i]);
                                }
                                else{
                                  selectedList.add(onDealsModel[i]);
                                }
                              },);
                              print(selectedList.length);
                              print(onDealsModel.length);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0)
                                  ),
                                  border: Border.all(
                                      color:selectedList.contains(onDealsModel[i]) ? green_008000 : view_line_DEDBDE,
                                      width: 1
                                  ),
                                  color: const Color(0xffffffff)
                              ),
                              child: Center(
                                child: Text(onDealsModel[i].title,style: TextStyle(
                                    fontFamily: sfpro_text_medium,
                                    fontSize: 12.5,
                                    color:selectedList.contains(onDealsModel[i]) ? green_008000 : black_163351
                                ),),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    child: Text(str_comments,style: TextStyle(
                        fontSize: 15,color:black_163351,fontFamily: sfpro_text_bold
                    ),),
                  ),
                  Container(
                    height: 75,
                    margin: EdgeInsets.only(top: 18, right: 15, left: 15),
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 11.7),
                    decoration: BoxDecoration(
                        border: Border.all(color: gray_ebebeb, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        color: Colors.white),
                    child: new TextField(
                      // controller: titleController,
                      style: const TextStyle(
                          color: black_163351,
                          fontFamily: sfpro_text_medium,
                          fontSize: 14.0),
                      decoration: new InputDecoration(
                        isDense: true,
                        //hintText:"Enetr Description",
                        hintStyle: TextStyle(
                            color: black_163351,
                            fontFamily: sfpro_text_medium,
                            fontSize: 14.0),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15,top: 40),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: Text(
                            str_submit,
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
                            padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              // side: BorderSide(color: skygreen_24d39e, width: 0),
                            ),
                          )),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
