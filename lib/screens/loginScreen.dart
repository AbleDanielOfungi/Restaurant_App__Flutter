import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/const/colors.dart';
import 'package:plants_care_uganda_ltd/screens/signUpScreen.dart';
import 'package:plants_care_uganda_ltd/widgets/customTextField.dart';

import '../utils/helper.dart';
import 'forgetPwScreen.dart';
import 'homeScreen.dart';
class LoginScreen extends StatelessWidget {
  static const routeName='/loginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          height:Helper.getScreenHeight(context),
          width: Helper.getScreenWidth(context),
          child: SafeArea(child:
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30,),
            child: Column(
              children: [
                Text('Login',
                style: Helper.getTheme(context).headline6,),

                //SizedBox(height: 10,),
                Spacer(),

                Text('Add your details to Log in',),
                             //SizedBox(height: 10,),
                Spacer(),

                CustomTextInput(hintText: 'Email'),

                      Spacer(),
                //SizedBox(height: 10,),
                CustomTextInput(
                  hintText: 'Password',),

                Spacer(),
                //SizedBox( height: 10.0,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    //to home screen
                    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                  },
                      child: Text('Log In'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                  ),
                ),
                //SizedBox(height: 10,),
                Spacer(),

                GestureDetector(onTap: (){
                  Navigator.of(context).pushReplacementNamed(ForgetPwScreen.routeName);
                },
                child: Text('Forget your Password'),
                ),
                //SizedBox(height: 50,),
                Spacer(
                  flex: 2,
                ),
                Text(' or Log In With'),
                SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                    child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/facebook.png',
                        height: 40,),
                      SizedBox(width: 10,),
                      Text('Log In with Facebook')

                    ],
                  ),
                  ),
                ),

                //button 2
                //SizedBox(height: 10,),
                Spacer(),

                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.redAccent[200])),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/search.png',
                          height: 30,

                        ),
                       SizedBox(width: 10,),
                       // Spacer(),
                        Text('Log In with Google')

                      ],
                    ),
                  ),
                ),

                //SizedBox(height: 50,),
                Spacer(
                  flex: 4,
                ),


                //dont have an account text
                GestureDetector(onTap: (){


                    Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);

                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text("Don't Have an account?, "),
                      Text('Sign Up',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),),

                    ],
                  ),
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

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    required String hintText,
    Key? key,
  }) : _hintText=hintText,
        super(key: key);
  final String _hintText;

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 50, decoration: ShapeDecoration(color: AppColor.placeholderBg,
    shape: StadiumBorder(),
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: _hintText,
        hintStyle: TextStyle(
          color: AppColor.placeholder,
        ),
        contentPadding: const EdgeInsets.only(left: 40),
      ),
    ),
    );
  }
}
