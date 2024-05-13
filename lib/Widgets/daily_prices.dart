import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class DailyPrices extends StatelessWidget {
  final String title;
  final bool flag;
  const DailyPrices({super.key,required this.title,required this.flag});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,size: 2.5.h,),
        Text(title,style: GoogleFonts.roboto(
            fontSize: 9.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white
        ),),
        flag==true?SizedBox(width: 25.5.h,):const SizedBox(width: 0.1,),
        flag == true?Container(
          height: 2.h,
          width: 2.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0.5.h)),
              color: Colors.grey.withOpacity(0.4)
          ),
          child: Center(child: Icon(Icons.add,color: Colors.white,size: 2.h,)),
        ):const SizedBox(width: 0.1,)
      ],
    );
  }
}
