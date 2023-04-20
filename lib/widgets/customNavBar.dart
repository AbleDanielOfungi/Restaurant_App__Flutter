import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/const/colors.dart';

import '../screens/menuScreen.dart';
import '../screens/moreScreen.dart';
import '../screens/offerScreen.dart';
import '../screens/profileScreen.dart';
import '../utils/helper.dart';

class CustomNavBar extends StatelessWidget {
  final bool profile;
  final bool home;
  final bool menu;
  final bool offer;
  final bool more;
 // const CustomNavBar(this.home,this.menu,this.more,this.offer);
  const CustomNavBar(

  {
    this.profile=false,
    this.home=false,
    this.menu=false,
    this.more=false,
    this.offer=false,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipShadow(
                boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange,
                  offset: Offset(
                    0,
                    -0.5
                  ),
                  blurRadius: 10,

              ),
              ],
              clipper: CustomNavBarClipper(),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 80,
                width: Helper.getScreenWidth(context),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        if(!menu){
                          Navigator.of(context).pushReplacementNamed(MenuScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                         Icon(Icons.menu),
                          Text('Menu'),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        if(!offer){
                          Navigator.of(context).pushReplacementNamed(OfferScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //offer?Image.asset(Helper.getAssetName("cakes", "virtual"),
                         // ),
                          Icon(Icons.shopping_bag),
                          Text('Offers'),
                        ],
                      ),
                    ),
                   SizedBox(
                     width: 20,
                   ),
                    GestureDetector(
                      onTap: (){
                        if(!profile){
                          Navigator.of(context).pushReplacementNamed(ProfileScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_outline),
                          Text('Profile'),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        if(!more){
                          Navigator.of(context).pushReplacementNamed(MoreScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.more_horiz,
                          color: Colors.deepOrange,
                          ),
                          Text('More'),
                        ],
                      ),
                    ),


                  ],
                ),

              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                backgroundColor: Colors.orange,
                elevation: 0,
                onPressed: (){},
              child: Icon(
                  Icons.home,
                color: Colors.white,
              ),),
            ),
          )
        ],
      ),
    );
  }
}

class CustomNavBarClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path=Path();
    path.moveTo(0, 0);
    path.lineTo(size.width*0.3, 0);
    path.quadraticBezierTo(
      size.width*0.375,
      0,
      size.width*0.375,
      size.height*0.1,
    );
    path.cubicTo(
      size.width*0.4,
      size.height*0.9,
      size.width*0.6,
      size.height*0.9,
      size.width*0.625,
      size.width*0.1,
    );
    path.quadraticBezierTo(
      size.width*0.625,
      0,
      size.width*0.7,
      0.1
    );
    path.lineTo(
      size.width, 0,
          );
    path.lineTo(
      size.width,
      size.height,
    );
    path.lineTo(
       0,
      size.height,
    );
    path.lineTo(
      0,
      0,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
     return true;
  }
  
}
