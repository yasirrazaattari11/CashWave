import 'dart:ui';

import 'package:cash_wave/Components/colors.dart';
import 'package:cash_wave/UIs/home_screen.dart';
import 'package:cash_wave/Widgets/appbar_Title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_plus_keyboard/package/controllers/pin_input_controller.dart';
import 'package:pin_plus_keyboard/package/pin_plus_keyboard_package.dart';
import 'package:sizer/sizer.dart';
class PincodeScreen extends StatefulWidget {
  const PincodeScreen({super.key});

  @override
  State<PincodeScreen> createState() => _PincodeScreenState();
}

class _PincodeScreenState extends State<PincodeScreen> {
  PinInputController pinInputController = PinInputController(length: 5);
  Future<void> _demoButton() async{
    await showDialog(context: context, builder: (BuildContext context){
      return Column(
        children: [
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
            child: Column(
              children: [
                SizedBox(height: 82.h,),
                Container(
                  height: 0.75.h,
                  width: 8.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.h),
                    color: Colors.grey.withOpacity(0.6)
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, PageTransition(child: HomeScreen(), type: PageTransitionType.rightToLeftPop));
                    },
                    child: Container(
                      height:10.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.h),
                        color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Demo mode',style: GoogleFonts.roboto(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.none
                          ),),
                         SizedBox(width: 2.w,),
                         Icon(Icons.arrow_forward_ios,color: user_mint,size: 2.h,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
    });

  }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 4.h,),
          Center(
            child: Text('Enter Passcode',style: GoogleFonts.roboto(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            ),
          ),
          SizedBox(height: 4.h,),
          PinPlusKeyBoardPackage(
            cancelColor: user_black,
            spacing: 2.h,
            keyboardBtnSize: 10.h,
            inputFillColor: Colors.grey.withOpacity(0.1),
            inputTextColor: user_green,
            btnElevation: 2,
            inputTextStyle: GoogleFonts.roboto(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: user_green
            ),
            errorColor: Colors.redAccent,
            inputShadowColor: Colors.grey,
            inputHasBorder: false,
            inputShape: InputShape.rounded,
            buttonFillColor: user_black,
            btnHasBorder: false,
            btnTextColor: Colors.white,
            keyboardButtonShape: KeyboardButtonShape.circular,
            pinInputController: pinInputController,
            onSubmit: () {
              /// ignore: avoid_print
              print("Text is : " + pinInputController.text);
            },
            keyboardFontFamily: 'Roboto',
          ),
          SizedBox(height: 3.h,),
          Center(
            child: GestureDetector(
              onTap: (){
               _demoButton();
              },
              child: Text("Can not Login?",style: GoogleFonts.roboto(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: user_green,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
