
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../models/WeatherModel.dart';
import 'CustomShape2.dart';

class WeatherCarousel extends StatelessWidget {
  WeatherModel weatherModel;

  WeatherCarousel(this.weatherModel);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: 100.w,
          height: 25.h,
          child: CustomPaint(
            size: Size(100.w, (100.w*0.5207100591715976).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter2(),
            child: Padding(
              padding: EdgeInsets.only(left: 5.w,right: 5.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Text(
                    weatherModel.temperature,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontFamily: 'SF-Pro-Display',
                      fontWeight: FontWeight.w400,
                      height: 0.02,
                      letterSpacing: 0.2,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Text(weatherModel.humidity,
                    style: TextStyle(
                      color: Color(0x99EBEBF5),
                      fontSize: 13,
                      fontFamily: 'SF-Pro-Display',
                      fontWeight: FontWeight.w400,
                      height: 1,

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(weatherModel.cityName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'SF-Pro-Display',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                      Text(
                        weatherModel.description,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'SF-Pro-Display',
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -4.1.h,
          right: 0,
          child: Image.asset('assets/images/${weatherModel.icon}'),
        ),
      ],
    );
  }
}
