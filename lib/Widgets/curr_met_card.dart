import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'curr_column.dart';
import 'curr_met_containers.dart';
class CurrMetCard extends StatelessWidget {
  final String title,img_source1,img_source2;
  const CurrMetCard({super.key,required this.title,required this.img_source1,required this.img_source2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.7.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.h)),
          color: Colors.black),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 2.h,vertical: 2.5.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CurrColumn(
                      align: false,
                      title: title,
                      widget1: CurrMetCont(
                          img_source: img_source1),
                      widget2: CurrMetCont(
                          img_source: img_source2)),
                ),
              ),
              CurrColumn(
                align: true,
                height1: 2.h,
                height2: 2.h,
                title: 'Buy',
                widget1: Text('\$ 78,92',style: GoogleFonts.roboto(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white
                ),),
                widget2: Text('\$ 78,92',style: GoogleFonts.roboto(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white
                ),),),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: CurrColumn(
                  align: true,
                  height1: 2.h,
                  height2: 2.h,
                  title: 'Sell',
                  widget1: Text('\$ 78,92',style: GoogleFonts.roboto(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                  ),),
                  widget2: Text('\$ 78,92',style: GoogleFonts.roboto(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                  ),),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
