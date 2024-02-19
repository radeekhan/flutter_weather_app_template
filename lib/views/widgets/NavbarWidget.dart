
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../pages/ListScreen.dart';
import 'CustomShape.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 87.h),
        ClipRect(
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Image.asset('assets/icons/Map.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 13.h,
                  width: 60.w,
                  child: CustomPaint(
                    size: Size(100.w, (100.w*0.37969924812030076).toDouble()),
                    painter: RPSCustomPainter(),
                    child: Center(
                      child: Container(
                        width: 16.w,
                        height: 8.h,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.72, -0.69),
                            end: Alignment(-0.72, 0.69),
                            colors: [Color(0xFFF5F5F9), Color(0xB2DADFE7)],
                          ),
                          shape: CircleBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x7F0D1144),
                              blurRadius: 10,
                              spreadRadius: 0,
                            ),BoxShadow(
                              color: Color(0x7FFFFFFF),
                              blurRadius: 10,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Center(
                            child: Image.asset('assets/icons/Plus.png')
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListScreen()),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/icons/List.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
