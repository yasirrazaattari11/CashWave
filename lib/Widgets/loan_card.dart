import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoanCard extends StatelessWidget {
  final Color background, inner_background, title_color, subtitle_color,icon_color;
  final String title, subtitle;
  final IconData icon;
  final bool flag;
  const LoanCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.title_color,
      required this.subtitle_color,
      required this.inner_background,
      required this.background,
      required this.flag,
      required this.icon,
      required this.icon_color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.h)),
          color: background),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
        child: Row(
          children: [
            Container(
              height: 20.h,
              width: 4.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(1.h),
                  ),
                  color: inner_background),
              child: Center(
                child: Icon(
                  icon,
                  color: icon_color,
                ),
              ),
            ),
            SizedBox(
              width: 1.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.roboto(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                      color: title_color),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.roboto(
                      fontSize: 7.sp,
                      fontWeight: FontWeight.w300,
                      color: subtitle_color),
                ),
              ],
            ),
            SizedBox(
              width: 10.h,
            ),
            flag == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$ 78,92',
                        style: GoogleFonts.roboto(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w700,
                            color: title_color),
                      ),
                      Text(
                        'Rate 3.5%',
                        style: GoogleFonts.roboto(
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w300,
                            color: subtitle_color),
                      ),
                    ],
                  )
                : const Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage('assets/cross.png'),
                      color: Colors.black,
                      filterQuality: FilterQuality.high,
                    ))
          ],
        ),
      ),
    );
  }
}
