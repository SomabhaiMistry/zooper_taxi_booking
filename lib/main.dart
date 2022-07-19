import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zooper_taxi_booking/UiScreenList/ListScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // 2.15.1

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: false,
      minTextAdapt: true,

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // builder: (context, widget) {
        //   ScreenUtil.setContext(context);
        //   return MediaQuery(
        //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        //     child: widget!,
        //   );
        // },
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const ListScreen(),
      ),
    );
  }
}

