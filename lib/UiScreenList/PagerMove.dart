import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zooper_taxi_booking/Style/Constant.dart';
import 'package:zooper_taxi_booking/Style/my_colors.dart';
import 'package:zooper_taxi_booking/Style/my_icons.dart';

void main() {
  runApp(PagerMove());
}

class PagerMove extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smooth Page Indicator Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(5,
            (index) => Container(
              child:
              new PageView(
                controller: controller,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Center(child: Image.asset(img_logo,height: 250,width: 200,)),
                        SizedBox(height: 20,),
                        Text("APP NAme",style: TextStyle(
                            fontFamily: sfpro_text_medium,color: black_163351,fontSize: 35
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Center(child: Image.asset(img_logo,height: 250,width: 200,)),
                        SizedBox(height: 20,),
                        Text("APP NAme2",style: TextStyle(
                            fontFamily: sfpro_text_medium,color: black_163351,fontSize: 35
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(child: Image.asset(img_logo,height: 250,width: 200,)),
                        SizedBox(height: 20,),
                        Text("APP NAme",style: TextStyle(
                            fontFamily: sfpro_text_medium,color: black_163351,fontSize: 35
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Center(child: Image.asset(img_logo,height: 250,width: 200,)),
                        SizedBox(height: 20,),
                        Text("APP NAme2",style: TextStyle(
                            fontFamily: sfpro_text_medium,color: black_163351,fontSize: 35
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Center(child: Image.asset(img_logo,height: 250,width: 200,)),
                        SizedBox(height: 20,),
                        Text("APP NAme",style: TextStyle(
                            fontFamily: sfpro_text_medium,color: black_163351,fontSize: 35
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Center(child: Image.asset(img_logo,height: 250,width: 200,)),
                        SizedBox(height: 20,),
                        Text("APP NAme2",style: TextStyle(
                            fontFamily: sfpro_text_medium,color: black_163351,fontSize: 35
                        ),)
                      ],
                    ),
                  ),
                ],
              )
        ));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 350,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),


              SizedBox(height: 25,),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  dotColor: Colors.yellow,
                  activeDotColor: Colors.red,
                  type: WormType.thin,
                  // strokeWidth: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}