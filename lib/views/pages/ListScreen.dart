
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants.dart';
import '../widgets/WeatherCarousel.dart';


class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/list_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 3.w, right: 3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6.h),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  Text(
                    '   Weather',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'SF-Pro-Display',
                      fontWeight: FontWeight.w400,
                      height: 1,
                      letterSpacing: 0.36,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Container(
                height: 6.5.h,
                width: 100.w,
                decoration: ShapeDecoration(
                 color: Color(0xff1C1B33),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 3.w),
                    Icon(
                      Icons.search,
                      color: Color(0x99EBEBF5),
                      size: 24,
                    ),
                    Text(
                      ' Search for a city or airport',
                      style: TextStyle(
                        color: Color(0x99EBEBF5),
                        fontSize: 17,
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: .5.h),
              Container(
                height: 77.h,
                child: ListView.separated(
                  itemCount: weatherList.length,
                  itemBuilder: (context,index){
                  return WeatherCarousel(weatherList[index]);
                }, separatorBuilder: (context,index){
                  return SizedBox(height: 4.h);
                },
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
