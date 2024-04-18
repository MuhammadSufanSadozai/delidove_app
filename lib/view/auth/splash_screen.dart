import 'package:delidove_app/utils/export_lib.dart';
import 'package:delidove_app/view/auth/get_start_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  ChangeScreen(){
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => GetStart()));
    });
  }


  @override
  void initState() {
    super.initState();
   ChangeScreen();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/4.png')),
        ],
      )
    );
  }
}
