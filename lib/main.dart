import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/screens/cakeScreen.dart';
import 'package:plants_care_uganda_ltd/screens/forgetPwScreen.dart';
import 'package:plants_care_uganda_ltd/screens/individualItem.dart';
import 'package:plants_care_uganda_ltd/screens/introScreen.dart';
import 'package:plants_care_uganda_ltd/screens/landingScreen.dart';
import 'package:plants_care_uganda_ltd/screens/loginScreen.dart';
import 'package:plants_care_uganda_ltd/screens/menuScreen.dart';
import 'package:plants_care_uganda_ltd/screens/moreScreen.dart';
import 'package:plants_care_uganda_ltd/screens/newPwScreen.dart';
import 'package:plants_care_uganda_ltd/screens/offerScreen.dart';
import 'package:plants_care_uganda_ltd/screens/profileScreen.dart';
import 'package:plants_care_uganda_ltd/screens/signUpScreen.dart';
import 'package:plants_care_uganda_ltd/screens/splashScreen.dart';
import 'package:plants_care_uganda_ltd/screens/sentOTPScreen.dart';
import 'package:plants_care_uganda_ltd/screens/homeScreen.dart';

//@dart=2.9


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
           // backgroundColor: MaterialStateProperty.all(AppColor.orange),
            shape: MaterialStateProperty.all(StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          )
        ),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.orange, fontSize: 25.0,),

        )
      ),

      home: HomeScreen(),
      routes: {
        LandingScreen.routeName:(context)=>LandingScreen(),
        LoginScreen.routeName:(context)=>LoginScreen(),
        SignUpScreen.routeName:(context)=>SignUpScreen(),
        ForgetPwScreen.routeName:(context)=>ForgetPwScreen(),
        SentOTPScreen.routeName:(context)=>SentOTPScreen(),
        NewPwScreen.routeName:(context)=>NewPwScreen(),
        IntroScreen.routeName:(context)=>IntroScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),

        MoreScreen.routeName:(context)=>MoreScreen(),
        ProfileScreen.routeName:(context)=>ProfileScreen(),
        OfferScreen.routeName:(context)=>OfferScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        IndividualItem.routeName:(context)=>IndividualItem(),
        MenuScreen.routeName:(context)=>MenuScreen(),
        CakeScreen.routeName:(context)=>CakeScreen(),



      },
    );
  }
}
