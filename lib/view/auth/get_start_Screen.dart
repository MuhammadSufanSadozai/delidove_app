
import 'package:delidove_app/utils/export_lib.dart';
import 'package:delidove_app/view/auth/get_start_screen1.dart';
import 'package:delidove_app/view/auth/login.dart';
import 'package:delidove_app/widgets/Btnwidget.dart';
import 'package:flutter/cupertino.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
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
                SizedBox(height: 270),
                Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      Image.asset('assets/images/9.png', height: 100, width: 100),
                      SizedBox(height: 30),
                      Text(
                        'Get Started',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Order Your Favourite Food And \n Get It To your DoorStep',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Greycclr,

                        ),
                      ),
                      SizedBox(height: 40),
                      BtnWidget(
            
                          onpress: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }, btntext: "START"),
            
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                          ),
                          GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => GetStart1()),
                                );
                              },
                              child: Text('Terms & Conditions ', style: TextStyle(color: Greycclr))),
                        ],
                      ),
                    ],
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
