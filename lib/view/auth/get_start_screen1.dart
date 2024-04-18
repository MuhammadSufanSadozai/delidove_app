import 'package:delidove_app/utils/export_lib.dart';

import 'package:get/get.dart';


export 'package:delidove_app/view/auth/get_start_screen1.dart';

class GetStart1 extends StatefulWidget {
  const GetStart1({super.key});

  @override
  State<GetStart1> createState() => _GetStart1State();
}

class _GetStart1State extends State<GetStart1> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/grocery.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 240,
              ),
              Container(

                height: 582,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                        Row(

                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                (() {
                                  isChecked = value ?? false;
                                });
                              },
                            ),

                            Text(
                              'Accept',
                              style: TextStyle(color: Greycclr),
                            ),
                          ],
                        ),


                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },

                          child :  Icon(
                            Icons.clear,
                            color: appColor,
                            size: 30,
                            weight: 300,
                          ),
                        )
                      ]),
                    ),
                    SizedBox(height: 20,),
                    Text('TERMS OF USE',style: TextStyle(color: black),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
