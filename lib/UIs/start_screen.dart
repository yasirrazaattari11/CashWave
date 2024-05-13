import 'package:cash_wave/Components/colors.dart';
import 'package:cash_wave/UIs/pincode_screen.dart';
import 'package:cash_wave/Widgets/appbar_Title.dart';
import 'package:cash_wave/Widgets/signIn_buttons.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppbarTitle(),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Container(
                height: 4.h,
                width: 9.w,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.withOpacity(0.2)),
                child: const Icon(Icons.more_vert_outlined)),
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: [
            Column(
              children: [
                SizedBox(
                  height: 1.25.h,
                ),
                Image(
                  image: const AssetImage('assets/logo.png'),
                  height: 10.h,
                  filterQuality: FilterQuality.high,
                ),
              ],
            ),
            Positioned(
              right: 155,
              top: 30,
              child: Image(
                image: const AssetImage('assets/logoTop.png'),
                height: 1.h,
                width: 11.w,
                filterQuality: FilterQuality.high,
              ),
            ),
          ]),
          SizedBox(
            height: 10.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                children: [
                  const SigninButtons(
                      color: user_green,
                      text: 'Log in',
                      textColor: Colors.black,
                  onTap: PincodeScreen(),),
                  SizedBox(
                    height: 2.h,
                  ),
                  const SigninButtons(
                      color: user_black,
                      text: 'Become a client of the bank',
                      textColor: Colors.white,
                  onTap: PincodeScreen(),)
                ],
              ))
        ],
      )),
    );
  }
}
