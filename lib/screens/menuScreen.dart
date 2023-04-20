import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/screens/homeScreen.dart';

import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class MenuScreen extends StatelessWidget {
  static const routeName='/menuScreen';
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Column(
            children: [
              Padding(padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Menu',
                      style: TextStyle(
                        fontSize: 17
                      ),
                    ),
                    Icon(Icons.shopping_cart),
                  ],
                ),
              ),

              //search bar
              SizedBox(
                height: 20,
              ),
              SearchBar(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: Helper.getScreenHeight(context)*0.6,
                width: Helper.getScreenWidth(context),
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: 100,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        color: Colors.deepOrange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MenuCard(
                            imageShape: ClipOval(
                              child: Container(
                                height:60 ,
                                width: 60,
                                child: Image.asset(
                                  'assets/juice.jpg',
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            name: 'Juice',
                            count: '128',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap:(){
                              Navigator.of(context).pushNamed(routeName);

                          },
                            child: MenuCard(
                              imageShape: ClipOval(
                                child: Container(
                                  height:60 ,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/cakes.jpg',
                                    fit: BoxFit.cover,
                                  ),

                                ),
                              ),
                              name: 'Cakes',
                              count: '987',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MenuCard(
                            imageShape: ClipOval(
                              child: Container(
                                height:60 ,
                                width: 60,
                                child: Image.asset(
                                  'assets/greens.jpg',
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            name: 'Green Vegetables',
                            count: '300',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MenuCard(
                            imageShape: ClipOval(
                              child: Container(
                                height:60 ,
                                width: 60,
                                child: Image.asset(
                                  'assets/milk.jpg',
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            name: 'Milk Tea',
                            count: '98',
                          ),





                        ],
                      ),
                    )

                  ],
                ),
              )


            ],
          ),
          ),
          Positioned(
            bottom: 0,
              left:0,
              child: CustomNavBar(
            menu:true,
          ))
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required String name,
    required String count,
    required Widget imageShape,
  }) :_name=name,_count=count,_imageShape=imageShape, super(key: key);
  final String _name;
  final String _count;
  final Widget _imageShape;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 80,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
              color:AppColor.placeholderBg,
                    offset: Offset(0, 5),
                    blurRadius: 10,

          )
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,

                ),

              ),
              SizedBox(
                height: 5,
              ),
              Text(
                  '$_count items'
              )
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerLeft,
            child: _imageShape
          ),
        ),

        ///donuts 4--kite  10---mandazi  10--buns 3---sconce  5--white loaf big  2--

        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height:60 ,
              width: 60,
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.white,
                shadows: [
                  BoxShadow(
                    color: AppColor.placeholderBg,
                    offset: Offset(0,2),
                    blurRadius: 5,
                  )
                ]
              ),
              child: Icon(
                Icons.next_plan,
                color: Colors.deepOrange,
              )

            ),
          ),
        )
      ],
    );
  }
}
