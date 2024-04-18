

import 'package:delidove_app/utils/export_lib.dart';
import 'package:delidove_app/view/auth/login.dart';
import 'package:get/get.dart';

import '../../widgets/Btnwidget.dart';
import '../../widgets/signinoptionswidget.dart';
import '../../widgets/textformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/grocery.png'),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height:  169,
                ),
                Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome ',style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('Lorem ipsum dolor sit amet consectetur \n,adipiscing elit sed do.',style: TextStyle(color: Greycclr),),
                        SizedBox(height: 20,),
                        TextFormFieldWidget(hinttext: 'Email Adress',),
                        SizedBox(height: 20,),
                        TextFormFieldWidget(hinttext: 'Password',),
                        SizedBox(height: 20,),
                        TextFormFieldWidget(hinttext: 'Phone Number',),
                        SizedBox(height: 20,),
                        TextFormFieldWidget(hinttext: 'Confirm Password',),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Fogot Password',style: TextStyle(color: appColor),),
                          ],
                        ),
                        SizedBox(height: 25,),
                        Center(
                          child:  BtnWidget(

                              onpress: (){
                                Get.to(() => Login());
                               
                              },

                              btntext: "Sign Up "),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account  ? ',style: TextStyle(color: black1),),
                            Text('Sign In',style: TextStyle(color: appColor),),
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
