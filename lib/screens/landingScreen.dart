import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/screens/signUpScreen.dart';
import 'package:plants_care_uganda_ltd/utils/helper.dart';

import 'loginScreen.dart';

class LandingScreen extends StatelessWidget {

  static const routeName="/landingScreen";

  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context), height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            //upper design
            Align(alignment: Alignment.topCenter,
              child: ClipPath(
               // clipper: CustomClipperAppBar(),
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context)*0.5,
                  decoration: ShapeDecoration(color: Colors.orange,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Image.asset('assets/landing.jpg',
                    fit:BoxFit.cover,),

                ),
              ),
            ),

            Align(alignment: Alignment.center,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/logo.jpg'),
        radius: 100.0,
      ),
            //Image.asset('assets/pic.png'),
            ),
            Spacer(),
            Align(alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context)* 0.3,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(children:[
                    Flexible(
                        child: Text("Discover the best food from 1000+ best restaurants and fast delivered to you",
                        textAlign: TextAlign.center,
                        ),),
                    Spacer(
                      //flex: 1,
                    ),
                    //login Button
                    SizedBox(width: double.infinity,height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        //navigation to log in page
                       Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                      },
                      child: Text('Log In'),

                    ),),

                    SizedBox(height: 10,),
                    SizedBox(width: double.infinity,height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        foregroundColor: MaterialStateProperty.all(Colors.orange),
                        shape: MaterialStateProperty.all(StadiumBorder(
                        side: BorderSide(color: Colors.orange, width: 1.5))),
                        ),
                          onPressed: () {
                          //navigation
                            Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
                          },
                        child: Text('Create an account'),

                      ),),
                    Spacer(),
                    //sign up button


                 ] ),
                ),),
                      ],
        ),
      ),

    );
  }
}
/*
class CustomClipperAppBar extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    Offset controlPoint=Offset(size.width*0.24, size.height);
    Offset endPoint=(Offset(size.width*0.25, size.height*0.96);
        Offset controlPoint2=Offset(size.width*0.3, size.height*0.78);
        Offset endPoint2=(Offset(size.width*0.5, size.height*0.78);

    Path path=Path()
    ..lineTo(0,size.height)
    ..lineTo(size.width*0.21, size.height)
    ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endPoint.dx,
        endPoint.dy
    )
          ..quadraticBezierTo(
              controlPoint2.dx,
              controlPoint2.dy,
              endPoint2.dx,
              endPoint2.dy
          );
    return path;

  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;
  }
}
*/