
import 'package:delidove_app/utils/export_lib.dart';

class SignInOptionsWidget extends StatefulWidget {
  final String imageurl;

  const SignInOptionsWidget({super.key, required this.imageurl});

  @override
  State<SignInOptionsWidget> createState() => _SignInOptionsWidgetState();
}

class _SignInOptionsWidgetState extends State<SignInOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.shade200,
        ),
        child: Image.asset(widget.imageurl,
        ));
  }
}
