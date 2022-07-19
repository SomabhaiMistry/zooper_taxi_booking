import 'package:flutter/material.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';

class PopupCancelRide extends StatefulWidget {
  const PopupCancelRide({Key? key}) : super(key: key);

  @override
  _PopupCancelRideState createState() => _PopupCancelRideState();
}

class _PopupCancelRideState extends State<PopupCancelRide> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
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
                      str_cancel_ride,
                      style: TextStyle(
                          fontFamily: sfpro_text_bold,
                          color: black_163351,
                          fontSize: 14),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
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
                str_want_to_cancel_the_request,
                style: TextStyle(
                    fontFamily: sfpro_text_regular,
                    color: gray_9d9d9d,
                    height: 1.2,
                    fontSize: 12),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          str_date,
                          style: TextStyle(
                              fontFamily: sfpro_text_medium,
                              color: gray_9d9d9d,
                              fontSize: 13),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          str_date_day,
                          style: TextStyle(
                              fontFamily: sfpro_text_bold,
                              color: black_163351,
                              fontSize: 13),
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
                          str_logout,
                          style: TextStyle(
                              fontFamily: sfpro_text_medium,
                              color: gray_9d9d9d,
                              fontSize: 13),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          str_time,
                          style: TextStyle(
                              fontFamily: sfpro_text_bold,
                              color: black_163351,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
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
                            str_confirm_delete,
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
}
