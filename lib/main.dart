import 'package:delidove_app/utils/export_lib.dart';
import 'package:delidove_app/view/auth/dashBoard_1.dart';
import 'package:delidove_app/view/auth/get_start_Screen.dart';
import 'package:delidove_app/view/auth/login.dart';
import 'package:get/get.dart';

 void main(){

   runApp(MyApp());
 }


 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       debugShowCheckedModeBanner: false,
       home: SplashScreen(

       ),
     );
   }
 }
