import 'package:cash_wave/Components/colors.dart';
import 'package:cash_wave/Widgets/accounts.dart';
import 'package:cash_wave/Widgets/appbar_Title.dart';
import 'package:cash_wave/Widgets/curr_column.dart';
import 'package:cash_wave/Widgets/curr_met_card.dart';
import 'package:cash_wave/Widgets/curr_met_containers.dart';
import 'package:cash_wave/Widgets/daily_prices.dart';
import 'package:cash_wave/Widgets/finaces_card.dart';
import 'package:cash_wave/Widgets/loan_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: CircleAvatar(
              child: Container(
                height: 4.5.h,
                width: 1.h.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.h)),
                    color: user_green),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.25.h, bottom: 0.30.h),
                  child: Image(
                    image: const AssetImage('assets/johnbalwin.png'),
                    filterQuality: FilterQuality.high,
                    height: 0.05.h,
                  ),
                ),
              ),
            )),
        title: const AppbarTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Your balance',
                      style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ 7,890",
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        height: 3.h,
                        width: 6.5.w,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.grey.withOpacity(0.2)),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 2.5.h,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Accounts(
                            color: user_cyan,
                            cardType: 'VISA',
                            accountType: 'Salary',
                            balance: '\$ 2,230',
                            cardNumber: '** 6917'),
                        SizedBox(
                          width: 2.h,
                        ),
                        const Accounts(
                            color: user_green,
                            cardType: 'VISA',
                            accountType: 'Savings Account',
                            balance: '\$ 5,566',
                            cardNumber: '** 4552'),
                        SizedBox(
                          width: 2.h,
                        ),
                        const Accounts(
                            color: user_pink,
                            cardType: 'VISA',
                            accountType: 'Credit Account',
                            balance: '\$ 7,770',
                            cardNumber: '** 5678'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Finance",
                      style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.5.h),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const FinanceCard(
                            color: user_green,
                            financeType: 'My bounces',
                            icon: Icons.star_border,
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          const FinanceCard(
                            color: user_cyan,
                            financeType: 'My budget',
                            icon: Icons.account_balance_wallet_outlined,
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          const FinanceCard(
                            color: user_pink,
                            financeType: 'Finance analysis',
                            icon: Icons.analytics_outlined,
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          const FinanceCard(
                            color: user_mint,
                            financeType: 'Market budget',
                            icon: Icons.shop_outlined,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.h),
                      topRight: Radius.circular(4.h)),
                  color: Colors.grey.withOpacity(0.1)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    const DailyPrices(title: 'CURRENT LOAN', flag: true),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    const LoanCard(
                        title: 'Account No 3874825',
                        subtitle: 'Expires 12/22/2023',
                        title_color: Colors.white,
                        subtitle_color: Colors.grey,
                        inner_background: user_green,
                        background: Colors.black,
                        icon: Icons.credit_card,
                        icon_color: Colors.black,
                        flag: true),
                    SizedBox(
                      height: 2.h,
                    ),
                    const LoanCard(
                        title: 'Start investing now!',
                        subtitle: 'Protected savings and investment plans',
                        title_color: Colors.black,
                        subtitle_color: Colors.black,
                        inner_background: Colors.black,
                        background: user_cyan,
                        icon: Icons.flash_on,
                        icon_color: Colors.yellow,
                        flag: false),
                    SizedBox(
                      height: 3.h,
                    ),
                    const DailyPrices(
                        title: 'CURRENCIES AND METALS', flag: false),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    const CurrMetCard(title: 'Currencie', img_source1: 'assets/dollar.png', img_source2: 'assets/euro.png'),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    const CurrMetCard(title: 'Metals', img_source1: 'assets/metal.png', img_source2: 'assets/metal.png'),
                    SizedBox(height: 1.h,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
