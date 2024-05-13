import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
class SigninButtons extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final Widget onTap;
  const SigninButtons({super.key,required this.color,required this.text,required this.textColor,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 6.h,
        width: double.infinity,
        decoration:BoxDecoration(
            borderRadius:  BorderRadius.all(Radius.circular(20.h)),
            color: color
        ),
        child: Center(
          child: Text(text,style: GoogleFonts.roboto(
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              color:textColor
          ),),
        ),
      ),
      onTap: (){
        Navigator.push(context, PageTransition(child: onTap, type: PageTransitionType.rightToLeftWithFade));
      },
    );
  }
}
