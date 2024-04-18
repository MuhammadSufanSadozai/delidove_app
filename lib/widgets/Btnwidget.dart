


import 'package:delidove_app/utils/export_lib.dart';

class BtnWidget extends StatefulWidget {
  final void Function() onpress;
  final String btntext;
  final Color? bgcolor;
  const BtnWidget({super.key, required this.onpress, required this.btntext, this.bgcolor, });

  @override
  State<BtnWidget> createState() => _BtnWidgetState();
}

class _BtnWidgetState extends State<BtnWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpress,
      child: Container(
        height: 50,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:  widget.bgcolor ?? appColor,
        ),
        child: Center(
          child: Text(
            widget.btntext ,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
