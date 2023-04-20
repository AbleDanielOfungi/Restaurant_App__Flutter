import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/widgets/customTextField.dart';
import 'package:plants_care_uganda_ltd/screens/sentOTPScreen.dart';

import '../utils/helper.dart';
class ForgetPwScreen extends StatelessWidget {
  static const routeName='/forgetPwScreen';
  const ForgetPwScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30,),
            child: Column(
              children: [
                Text('Reset Password', style: Helper.getTheme(context).headline6,),
                SizedBox(height: 10,),
               // Spacer(),
                Text('Please enter Your Email to recieve a link to reset your Password via that email', textAlign: TextAlign.center,),
                //Spacer(),
                SizedBox(height: 10,),
                CustomTextInput(hintText: 'Email'),
                //Spacer(),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed(SentOTPScreen.routeName);
                  },
                    child: Text('Send'),

                  ),

                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
