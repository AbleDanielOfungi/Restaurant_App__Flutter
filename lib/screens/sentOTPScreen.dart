import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../utils/helper.dart';
import 'newPwScreen.dart';
//import 'package:plants_care_uganda_ltd/newPwScreen.dart';


class SentOTPScreen extends StatelessWidget {
  static const routeName="/sendOTP";
  const SentOTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 40,),
          child: Column(
            children: [
              Text('We have sent you an OTP to your mobile ',
                  style:Helper.getTheme(context).headline6,
                textAlign: TextAlign.center,
          ),
              SizedBox(height: 20,),
              Text('Please check your mobile number 07******59 continue to reset your password',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),

                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton(onPressed:() {
                  Navigator.of(context).pushReplacementNamed(NewPwScreen.routeName);
                }, child:Text('Next'),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't Recieve?"),
                  Text("Click Here ",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,

                    )
                    ,),
                ],
              )

            ],
          ),

        ),
      ),
    );
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          ),
        ),
      child: Stack(
        children: [
          Padding(padding: const EdgeInsets.only(top: 10, left: 20),
          child: Text("*",
          style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 45.0,
          ),),
          ),
        TextField(
          decoration: InputDecoration(border: InputBorder.none),
        ),
        ],
      ),


    );
  }
}
