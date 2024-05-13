import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AppbarTitle extends StatelessWidget {
  const AppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          SizedBox(height: 1.25.h,),
          Image(
            image: const AssetImage('assets/logo.png'),
            height: 1.5.h,
            filterQuality: FilterQuality.high,
          ),
        ],
      ),
      Positioned(
        top: 1,
        right: 5,
        child: Image(
          image: const AssetImage('assets/logoTop.png'),
          height: 1.h,
          width: 8.w,
          filterQuality: FilterQuality.high,
        ),),
    ]);
  }
}
