import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Components/colors.dart';
class CurrMetCont extends StatelessWidget {
  final String img_source;
  const CurrMetCont({super.key,required this.img_source});

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 4.h,
      width: 4.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(1.5.h),
          ),
          color: user_cyan),
      child: Center(
          child:Image(image: AssetImage(img_source))
      ),
    );
  }
}
