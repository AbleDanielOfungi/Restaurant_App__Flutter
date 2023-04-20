import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/const/colors.dart';
import 'package:plants_care_uganda_ltd/screens/homeScreen.dart';

import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class CakeScreen extends StatelessWidget {
  static const routeName='/cakeScreen';

  const CakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          SafeArea(child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //gesture
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: AppColor.primary,

                        ),
                    ),
                     SizedBox(
                       width: 5,
                     ),
                     Expanded(
                       child: Row(
                           children:[
                          Text("Cake",
                          style: Helper.getTheme(context).headline5,
                          ),
                           ],
                       ),
                     ),

                    Icon(Icons.shopping_cart),


                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SearchBar(),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height:   250,
                width: double.infinity,
                child: Image.asset(
                  'assets/juice.jpg',
                  fit: BoxFit.cover,
                ),
              )
            ],

          ),
          ),
         Positioned(
           bottom:0,
           left:0,
             child:CustomNavBar(
               menu: true,
             ),
         ),
        ],
      )
    );
  }
}
