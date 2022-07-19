import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';

void main() => runApp(Otp());

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  int _otpCodeLength = 4;
  String _otpCode = "";
  final intRegex = RegExp(r'\d+', multiLine: true);
  TextEditingController textEditingController = new TextEditingController(text: "");

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: silver_f5f5f5,
      border: Border.all(color: gray_e2e2e2,width: 1.5),
      borderRadius: BorderRadius.circular(8.0),
    );
  }

  _onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this._otpCode = otpCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              // TextFieldPin(
              //     textController: textEditingController,
              //     autoFocus: true,
              //     MainAxisAlignment alignment = MainAxisAlignment.start,
              //     codeLength: _otpCodeLength,
              //     defaultBoxSize: 50.0,
              //     margin: 8,
              //     selectedBoxSize: 50.0,
              //     textStyle: TextStyle(fontSize: 18.3,fontFamily: montserrat_bold,color: black_163351),
              //     defaultDecoration: _pinPutDecoration.copyWith(
              //       color: silver_f5f5f5,
              //         border: Border.all(
              //             color:gray_e2e2e2,width: 1.5)),
              //     selectedDecoration: _pinPutDecoration,
              //     onChange: (code) {
              //       _onOtpCallBack(code,false);
              //     }),
              SizedBox(
                width: 270,
                child: Theme(
                  data: ThemeData(
                    primaryColor: black,
                    primaryColorDark: black,
                    focusColor: black,
                    textSelectionTheme: TextSelectionThemeData(
                      cursorColor: black, //thereby
                    ),
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    obscureText: false,
                    obscuringCharacter: '*',
                    obscuringWidget: null,
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    enablePinAutofill: true,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        borderWidth: 1,
                        activeFillColor: Color(0xfff5f5f5),
                        inactiveColor: Color(0xfff5f5f5),
                        inactiveFillColor: Color(0xfff5f5f5),
                        errorBorderColor: Color(0xfff5f5f5),
                        activeColor: Color(0xfff5f5f5),
                        selectedColor: Color(0xfff5f5f5),
                        selectedFillColor: Color(0xfff5f5f5)),
                    cursorColor: Colors.black,
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    boxShadows: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: gray_e2e2e2,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
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