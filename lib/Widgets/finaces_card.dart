import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class FinanceCard extends StatelessWidget {
  final Color color;
  final String financeType;
  final IconData icon;
  const FinanceCard({super.key,required this.color,required this.financeType,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.h,
      width: 12.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2.h)),
          color: Colors.grey.withOpacity(0.1)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1.25.h,),
            Container(
              height: 5.h,
              width: 5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(1.h)),
                  color: color
              ),
              child: Center(
                child: Icon(icon,color: Colors.black,size: 3.5.h,),
              ),
            ),
            SizedBox(height: 2.h,),
            Text(
              financeType,
              style: GoogleFonts.roboto(
                  fontSize: 8.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
