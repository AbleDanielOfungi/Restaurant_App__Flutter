import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../widgets/customNavBar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName='/homeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                ),
                   Padding(
                     padding: const EdgeInsets.symmetric(
                       horizontal: 20
                     ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Good morning Able",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,                    ),
                            ),
                       // Image.asset('search.png'),
                        Icon(Icons.shopping_cart)
                      ],
                  ),
                   ),
                SizedBox(height: 20,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                ),

                Text("Delivering to"),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20),

              child: DropdownButtonHideUnderline(
                child: SizedBox(
                  width: 250,
                  child: DropdownButton(
                    //value: "Current Location",
                    items: [
                      DropdownMenuItem(
                          child: Text('Current Location'),
                        value: "current location",
                      )
                    ],
                    icon: Icon(Icons.arrow_drop_down),
                    onChanged: (String? value) {  },

                  ),
                ),
              ),
              ),

                SizedBox(
                  height: 20,
                ),
                  SearchBar(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/categories/hamburger.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                  'Hamberger',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),


                              )
                            ],
                          ),

                          //2nd
                          SizedBox(
                            width: 10,
                          ),

                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/pizza.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Pizza',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),


                              )
                            ],
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/cakes.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Cakes',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),


                              )
                            ],
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/roastedBeef.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Beef',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),


                              )
                            ],
                          ),


                          SizedBox(
                            width: 10,
                          ),

                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/tea.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Tea',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),


                              )
                            ],
                          ),


                          SizedBox(
                            width: 10,
                          ),

                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/juice.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'juice',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),


                              )
                            ],
                          ),


                          SizedBox(
                            width: 10,
                          ),

                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/wine.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Wine',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),


                              )
                            ],
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/friedChicken.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Chicken',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),

                ),

                SizedBox(
                  height: 50,
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          'Popular Restaurants',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),

                      TextButton(
                          onPressed: (){},
                          child: Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //popular restaurant 1
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                              'assets/friedChicken.jpg',
                          fit: BoxFit.cover,
                          ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Minute by Tuk Tuk',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star,
                              color: Colors.orange,
                              ),

                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                  '4.9',
                              style: TextStyle(
                                color: Colors.orange
                              ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('124 ratings'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                  'Cafe'
                              ),
                              SizedBox(
                                width: 5,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                      color: Colors.orange,
                                    fontWeight: FontWeight.w900
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Western Food'
                              ),
                            ],
                          )
                        ],
                      ),
                          ),

                    ],
                  ),
                ),


                //popular restaurant 2
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/veges.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Food by Joint Jointer',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.orange,
                                ),

                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      color: Colors.orange
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('124 ratings'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    'Cafe'
                                ),
                                SizedBox(
                                  width: 5,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    'African Food'
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),


                //popular restaurant 3
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/milk.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Milk Tea by Windsor',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.orange,
                                ),

                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                      color: Colors.orange
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('500 ratings'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    'Cafe'
                                ),
                                SizedBox(
                                  width: 5,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    'Eastern Food'
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                //popular restaurant 4
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/seafood.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Dinner by Leosim',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.orange,
                                ),

                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.orange
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('390 ratings'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    'Meal'
                                ),
                                SizedBox(
                                  width: 5,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    'Asian Food'
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                //popular restaurant 5

                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/classic.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('exomic by La place',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.orange,
                                ),

                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                      color: Colors.orange
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('8001 ratings'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    'vive'
                                ),
                                SizedBox(
                                  width: 5,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    'Western Food'
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
//end of popular restaurant



              //horinzontal popular

                SizedBox(
                    height: 50,
                ),
                Text(
                  'Most Popular',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'assets/categories/hamburger.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Hamberger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),


                            )
                          ],
                        ),

                        //2nd
                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'assets/pizza.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Pizza',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),


                            )
                          ],
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'assets/cakes.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Cakes',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),


                            )
                          ],
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'assets/roastedBeef.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Beef',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),


                            )
                          ],
                        ),


                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'assets/tea.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Tea',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),


                            )
                          ],
                        ),


                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'assets/juice.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'juice',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),


                            )
                          ],
                        ),


                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'assets/wine.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Wine',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),


                            )
                          ],
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'assets/friedChicken.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Chicken',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
              ),

                //Recent Items

                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Items',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),

                      TextButton(
                          onPressed: (){},
                          child: Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          )
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Row(

                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                'assets/greens.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text('Minute by Tuk Tuk',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                      'Cafe'
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      '.',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                      'Western Food'
                                  ),


                                ],
                              ),

                              Row(
                                children: [
                                  Icon(Icons.star,
                                    color: Colors.orange,
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                        color: Colors.orange
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('124 ratings'),
                                  SizedBox(
                                    width: 5,
                                  ),

                                ],
                              )
                            ],
                          )

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),


                      //recent items 2
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                'assets/classic.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text('Granted by Loci',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                      'CookedApo'
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      '.',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                      'Eastern Food'
                                  ),


                                ],
                              ),

                              Row(
                                children: [
                                  Icon(Icons.star,
                                    color: Colors.orange,
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2.5',
                                    style: TextStyle(
                                        color: Colors.orange
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('900 ratings'),
                                  SizedBox(
                                    width: 5,
                                  ),

                                ],
                              )
                            ],
                          )

                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),


                      //recent items 3

                      Row(

                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                'assets/fish.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text('By Okello John',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                      'Kanyero'
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      '.',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                      'Acholi Special'
                                  ),


                                ],
                              ),

                              Row(
                                children: [
                                  Icon(Icons.star,
                                    color: Colors.orange,
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '3.1',
                                    style: TextStyle(
                                        color: Colors.orange
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('90 ratings'),
                                  SizedBox(
                                    width: 5,
                                  ),

                                ],
                              )
                            ],
                          )

                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),



                      //recent items 4
                      Row(

                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                'assets/categories/wine.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text('Lapenda',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                      'Oyam'
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      '.',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                      'Langi Food'
                                  ),


                                ],
                              ),

                              Row(
                                children: [
                                  Icon(Icons.star,
                                    color: Colors.orange,
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                        color: Colors.orange
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('400 ratings'),
                                  SizedBox(
                                    width: 5,
                                  ),

                                ],
                              )
                            ],
                          )

                        ],
                      ),



                    ],
                  ),

                ),





              ],
            ),


          ),




          ),

          Positioned(
            bottom: 0,
              left: 0,
              child: CustomNavBar(
                home:true,
              ),
          ),
        ],
      ),


    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
      child: Container(
        //height: 100,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: AppColor.placeholderBg,
        ),

        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search
            ),
            hintText: 'Search',
            contentPadding: const EdgeInsets.only(
              top:15.0,
            )
          ),

        ),
      ),
    );
  }
}
