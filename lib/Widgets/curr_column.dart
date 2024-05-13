import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'curr_met_containers.dart';
class CurrColumn extends StatelessWidget {
  final String title;
  bool? align;
  double? height1,height2;
  final Widget widget1,widget2;
  CurrColumn({super.key,required this.title,required this.widget1,required this.widget2,this.align,this.height1,this.height2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        align == false?
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ):Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 4.h,),
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            )
          ],
        ),
        SizedBox(height: height1??1.h,),
        widget1,
        SizedBox(height: height2??1.5.h,),
        widget2
      ],

    );
  }
}
