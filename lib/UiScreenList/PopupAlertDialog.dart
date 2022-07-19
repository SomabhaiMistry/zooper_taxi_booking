import 'package:flutter/material.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_strings.dart';
class PopupAlertDialog extends StatefulWidget {
  const PopupAlertDialog({Key? key}) : super(key: key);

  @override
  _PopupAlertDialogState createState() => _PopupAlertDialogState();
}

class _PopupAlertDialogState extends State<PopupAlertDialog> {
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

                Container(
                  transform: Matrix4.translationValues(0, -18, 0),
                  child: Center(
                    child: Text(
                      "Alert Dialog",
                      style: TextStyle(
                          fontFamily: sfpro_text_bold,
                          color: black_163351,
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Center(
                  child: Text(
                    "Are you sure Want to Exit?",
                    style: TextStyle(
                        fontFamily: sfpro_text_regular,
                        color: black_163351,
                        fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 18,
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
                              "Yes",
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
                              "No",
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
      ),
    );
  }
}
