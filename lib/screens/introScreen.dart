import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/const/colors.dart';
import 'package:plants_care_uganda_ltd/utils/helper.dart';

class IntroScreen extends StatefulWidget {
  static const routeName='/introScreen';


  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _controller;
  late int count;

  final List<Map<String, String>>_pages=[
    {
      "image":"search.png",
      "title":"Find your best food here",
      "desc":"Discover the best food from over 100+ restaurants and fast delivery to your door step"
    },

    {
      "image":"search.png",
      "title":"Fast Delivery",
      "desc":"fast food delivery to your door steps or office"
    },

    {

      "image":"search.png",
      "title":"Live Tracking",
      "desc":"Real time live Tracking of your Order once it's placed"


    },
  ];


  @override
  void initState(){
    //controller
    _controller=new PageController();
    count=0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 40,),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                height: 500,
                width: double.infinity,

                  child: PageView.builder(
                    //controller
                    controller: _controller,
                    onPageChanged: (value){
                      setState(() {
                        count=value;
                      });
                    },
                    itemBuilder: (context, index){
                    return Image.asset(Helper.getAssetName(
                       _pages[index]["image"]!, "vitual"));

                  }, itemCount:_pages.length,

                ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:count==1? Colors.orange: AppColor.placeholderBg,

                    ),
                    SizedBox(width: 4,),

                    CircleAvatar(
                      radius: 5,

                      backgroundColor:count==2? Colors.orange: AppColor.placeholderBg,


                    ),
                    SizedBox(width: 4,),

                    CircleAvatar(
                      radius: 5,
                      backgroundColor:count==3? Colors.orange: AppColor.placeholderBg,


                    ),

                  ],
                ),

                SizedBox(height: 20,),

                Text(_pages[count]["title,"]!),
                SizedBox(height: 20,),
                Text(_pages[count]["desc"]!, textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                SizedBox(height: 50, width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Next'),
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
