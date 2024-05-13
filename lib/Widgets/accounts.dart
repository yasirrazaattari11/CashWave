import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Accounts extends StatelessWidget {
  final Color color;
  final String cardType, accountType, balance, cardNumber;
  const Accounts(
      {super.key,
      required this.color,
      required this.cardType,
      required this.accountType,
      required this.balance,
      required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      width: 15.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.5.h), color: color),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              cardType,
              style: GoogleFonts.roboto(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              accountType,
              style: GoogleFonts.roboto(
                fontSize: 8.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              balance,
              style: GoogleFonts.roboto(
                fontSize: 12.sp,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              cardNumber,
              style: GoogleFonts.roboto(
                fontSize: 10.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
