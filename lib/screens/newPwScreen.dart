import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/screens/introScreen.dart';
import 'package:plants_care_uganda_ltd/utils/helper.dart';

import '../widgets/customTextField.dart';

class NewPwScreen extends StatelessWidget {
  static const routeName="/newPw";
  const NewPwScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 40) ,
            child: Column(
            children: [
              Text('New Password',
                style: Helper.getTheme(context).headline6,
                ),
              SizedBox(height: 20,),
              Text('Please enter your email adress to reciev a new link to create new password via email',
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              CustomTextInput(hintText: 'New Password',),
              SizedBox(height: 20,),
              CustomTextInput(hintText: 'Confirm Password',),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacementNamed(IntroScreen.routeName);
                },
                  child:Text('Next',),
                ),
              ),

            ],
          ),),
        ),
      ),
    );
  }
}
