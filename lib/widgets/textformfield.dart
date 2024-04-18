
import 'package:delidove_app/utils/export_lib.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String hinttext;
   const TextFormFieldWidget({super.key, required this.hinttext});

   @override
   State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
 }

 class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {

   @override
   Widget build(BuildContext context) {
     return TextFormField(
       decoration: InputDecoration(
           hintText:  widget.hinttext,


       ),
     );
   }
 }
