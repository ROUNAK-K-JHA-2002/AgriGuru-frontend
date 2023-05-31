import 'package:agriguru/constants.dart';
import 'package:agriguru/helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Button extends StatefulWidget {
  final String text;

  final void Function()? onTap;
  const Button({super.key, required this.text, required this.onTap});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(top: 1.h),
        width: 80.w,
        height: 6.h,
        decoration: BoxDecoration(
            color: hexToColor(appRootColor),
            borderRadius: BorderRadius.circular(40)),
        child: Center(
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 2.4.h,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: -.5,
                wordSpacing: 1.5),
          ),
        ),
      ),
    );
  }
}
