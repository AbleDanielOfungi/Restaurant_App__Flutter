import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/screens/landingScreen.dart';
import 'package:plants_care_uganda_ltd/utils/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

late Timer _timer;
@override
void initState() {
    // TODO: implement initState
  _timer=Timer(Duration(milliseconds: 4000),(){
    //navigate to next screen
    Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
  });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //controlling pixels and making them adaptive
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset('assets/img.jpg',

                 // Helper.getAssetName("pic.png", "virtual"),
                  fit: BoxFit.fill,),

              ),
              Align(alignment: Alignment.center,
                child:Image.asset('assets/pic.png',
                  //Helper.getAssetName("pic.png", "virtual"),
                )
                ,)
            ],
          )
      ),

    );;
  }
}


