import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RPSCustomPainter2 extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(0,size.height*0.3798801);
path_0.cubicTo(0,size.height*0.1812028,0,size.height*0.08186420,size.width*0.03369645,size.height*0.03068057);
path_0.cubicTo(size.width*0.06739290,size.height*-0.02050324,size.width*0.1177287,size.height*0.002376699,size.width*0.2184006,size.height*0.04813659);
path_0.lineTo(size.width*0.8998047,size.height*0.3578659);
path_0.cubicTo(size.width*0.9478846,size.height*0.3797199,size.width*0.9719231,size.height*0.3906472,size.width*0.9859615,size.height*0.4247324);
path_0.cubicTo(size.width,size.height*0.4588182,size.width,size.height*0.5062602,size.width,size.height*0.6011420);
path_0.lineTo(size.width,size.height*0.7500000);
path_0.cubicTo(size.width,size.height*0.8678523,size.width,size.height*0.9267784,size.width*0.9809349,size.height*0.9633864);
path_0.cubicTo(size.width*0.9618728,size.height,size.width*0.9311893,size.height,size.width*0.8698225,size.height);
path_0.lineTo(size.width*0.1301775,size.height);
path_0.cubicTo(size.width*0.06881124,size.height,size.width*0.03812811,size.height,size.width*0.01906405,size.height*0.9633864);
path_0.cubicTo(0,size.height*0.9267784,0,size.height*0.8678523,0,size.height*0.7500000);
path_0.lineTo(0,size.height*0.3798801);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width,size.height*0.6022727), Offset(size.width*-0.000003274497,size.height*0.5653409), [Color(0xff362A84).withOpacity(1),Color(0xff5936B4).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}