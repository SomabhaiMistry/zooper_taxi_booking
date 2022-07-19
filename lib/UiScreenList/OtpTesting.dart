import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/UiScreenList/PopupSelectLocation.dart';
import 'package:zooper_taxi_booking/model/LikeModel.dart';
import 'package:zooper_taxi_booking/model/LikeModel.dart';
import 'package:zooper_taxi_booking/model/LikeModel.dart';
import 'package:zooper_taxi_booking/model/LikeModel.dart';
import 'package:zooper_taxi_booking/model/LikeNotModel.dart';

import 'PopupModifyRide.dart';

class OtpTesting extends StatefulWidget {
  const OtpTesting({Key? key}) : super(key: key);

  @override
  _OtpTestingState createState() => _OtpTestingState();
}

class _OtpTestingState extends State<OtpTesting> {
  List<LikeNotModel> notLikeModel = [];
  List<LikeNotModel> notselectedList = [];
  int position = 6;

  @override
  void initState() {
    notLikeModel.clear();
    notLikeModel.add( LikeNotModel("Driving"));
    notLikeModel.add( LikeNotModel("Professionalism"));
    notLikeModel.add( LikeNotModel("Not on Time"));
    notLikeModel.add( LikeNotModel("Route Taken"));
    notLikeModel.add( LikeNotModel("Car Condition"));
    notLikeModel.add( LikeNotModel("Other"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 6) / 6;
    final double itemWidth = size.width / 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15,right: 15,top: 15),
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

              InkWell(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return
                          SimpleDialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            children: [
                              Container(height: 180 ,width: 450, child:PopupSelectLocation(),),

                            ],//this right here
                            // child:
                          );
                      });
                },
                child: Text("Popup",style: TextStyle(
                  fontSize: 22,color: black_163351,fontFamily: sfpro_text_semibold
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
