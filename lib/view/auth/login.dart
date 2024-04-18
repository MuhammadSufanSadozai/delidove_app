import 'package:delidove_app/utils/export_lib.dart';
import 'package:delidove_app/view/auth/dashBoard_1.dart';
import 'package:delidove_app/view/auth/signUp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/Btnwidget.dart';
import '../../widgets/signinoptionswidget.dart';
import '../../widgets/textformfield.dart';

export 'package:delidove_app/view/auth/get_start_screen1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/grocery.png'),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height:  210,
                ),
                Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                  ),
                 child: Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Welcome Back !',style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                         Text('Lorem ipsum dolor sit amet consectetur \n,adipiscing elit sed do.',style: TextStyle(color: Greycclr),),
                      SizedBox(height: 20,),
                       TextFormFieldWidget(hinttext: 'Email',),
                       SizedBox(height: 20,),
                       TextFormFieldWidget(hinttext: 'Password',),
                       SizedBox(height: 20,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Text('Fogot Password',style: TextStyle(color: appColor),),
                         ],
                       ),
                       SizedBox(height: 20,),
                       Center(
                         child:  BtnWidget(

                             onpress: (){
                               Get.to(() =>  DashBoard());

                             }, btntext: "Login"),
                       ),
                       SizedBox(height: 30,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Dont have an Account ? ',style: TextStyle(color: black1),),
                           GestureDetector(
                               onTap: (){
                                 Get.to(() => SignUpScreen());
                               },

                               child: Text('Sign up',style: TextStyle(color: appColor),)),
                         ],
                       ),
                       SizedBox(height: 20,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(' --- ',style: TextStyle(color: appColor,fontWeight: FontWeight.bold),),
                           Text(' or ',style: TextStyle(color: Greycclr),),
                           Text('---',style: TextStyle(color: appColor,fontWeight: FontWeight.bold),),
                
                         ],
                       ),
                       Center(child: Text(' Sign up with ',style: TextStyle(color: Greycclr),)),
                       SizedBox(height: 30,),
                       Row( mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                
                           SignInOptionsWidget(imageurl: 'assets/images/google-icon.png',),
                           SizedBox(width: 10,),
                           SignInOptionsWidget(imageurl: 'assets/images/emailimg.png',),
                           SizedBox(width: 10,),
                           SignInOptionsWidget(imageurl: 'assets/images/phoneimg.png',),
                
                
                
                
                         ],
                
                       ),
                
                     ],),
                 ),
                ),
            
              ],
              
            ),
          ),
        ],
      ),
    );
  }
}
