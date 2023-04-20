import 'package:flutter/material.dart';


//import '../const/colors.dart';
import '../utils/helper.dart';
import 'loginScreen.dart';
//import 'plants_care_uganda_ltd/utils/';

class SignUpScreen extends StatelessWidget {
  static const routeName='/signUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30,),
              child: Column(
                children: [
                  Text('Sign Up',
                  style:Helper.getTheme(context).headline6,
                    ),
                  Spacer(),
                   Text('Add your Details to Sign Up'),
                  Spacer(),

                  CustomTextInput(hintText:'Name'),
                  Spacer(),
                  CustomTextInput(hintText:'Email'),
                  Spacer(),
                  CustomTextInput(hintText:'Phone Number'),
                  Spacer(),
                  CustomTextInput(hintText:'Address'),
                  Spacer(),
                  Spacer(),
                  CustomTextInput(hintText:'password'),
                  Spacer(),
                  CustomTextInput(hintText:'Confirm Password'),
                  Spacer(),
                  SizedBox(
                    height: 50.0,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){}, child: Text('Sign Up'),
                    ),
                     ),
                  Spacer(),
                  GestureDetector(onTap: (){
                    Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already Have an Account?'),
                      Text('Log In',
                        style: TextStyle(
                          color:Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
              )

                  ),





                ],
              ),

            ),

          ),


        ),
      ),
    );
  }
}
