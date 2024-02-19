import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/NavbarWidget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.only(left: 120, right: 122),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Bengaluru',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontFamily: 'SF-Pro-Display',
                            fontWeight: FontWeight.w400,
                            height: 2,
                            letterSpacing: 0.37,
                          ),
                        ),
                        Text(
                          '19°',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 96,
                            fontFamily: 'SF-Pro-Display-Thin',
                            fontWeight: FontWeight.w100,
                            height: 1,
                            letterSpacing: 0.37,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Mostly Clear\n',
                                style: TextStyle(
                                  color: Color(0x99EBEBF5),
                                  fontSize: 20,
                                  fontFamily: 'SF-Pro-Display-Medium',
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                  letterSpacing: 0.38,
                                ),
                              ),
                              TextSpan(
                                text: 'H:24°   L:18°',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'SF-Pro-Display-SemiBold',
                                  fontWeight: FontWeight.w600,
                                  height: 1.4,
                                  letterSpacing: 0.38,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.h),
                  Container(
                      width: 80.w,
                      child: Image.asset('assets/images/house.png')
                  ),
                ],
              )),
          NavBarWidget()
        ],
      ),
    );
  }
}
