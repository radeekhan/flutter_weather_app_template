import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(size.width*0.4210526,size.height*0.009900990);
path_0.lineTo(size.width*0.5789474,size.height*0.009900990);
path_0.cubicTo(size.width*0.8120301,size.height*0.009900990,size.width*0.7293233,size.height,size.width*0.9849624,size.height);
path_0.lineTo(size.width*0.01503759,size.height);
path_0.cubicTo(size.width*0.2706767,size.height,size.width*0.1879699,size.height*0.009900990,size.width*0.4210526,size.height*0.009900990);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.5000000,size.height*0.009900990), Offset(size.width*0.5000000,size.height), [Color(0xff262C51).withOpacity(1),Color(0xff3E3F74).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
path_1.moveTo(size.width*0.01503759,size.height);
path_1.lineTo(size.width*0.01503759,size.height*1.002475);
path_1.lineTo(size.width*0.9849624,size.height*1.002475);
path_1.lineTo(size.width*0.9849624,size.height);
path_1.lineTo(size.width*0.9849624,size.height*0.9975248);
path_1.cubicTo(size.width*0.9213308,size.height*0.9975248,size.width*0.8788158,size.height*0.9359614,size.width*0.8471504,size.height*0.8436376);
path_1.cubicTo(size.width*0.8154323,size.height*0.7511693,size.width*0.7945752,size.height*0.6277950,size.width*0.7743609,size.height*0.5039723);
path_1.cubicTo(size.width*0.7734211,size.height*0.4982168,size.width*0.7724812,size.height*0.4924604,size.width*0.7715451,size.height*0.4867059);
path_1.cubicTo(size.width*0.7523308,size.height*0.3688347,size.width*0.7332632,size.height*0.2518475,size.width*0.7054962,size.height*0.1630307);
path_1.cubicTo(size.width*0.6763195,size.height*0.06970396,size.width*0.6375301,size.height*0.007425743,size.width*0.5789474,size.height*0.007425743);
path_1.lineTo(size.width*0.4210526,size.height*0.007425743);
path_1.cubicTo(size.width*0.3624699,size.height*0.007425743,size.width*0.3236805,size.height*0.06970396,size.width*0.2945045,size.height*0.1630307);
path_1.cubicTo(size.width*0.2667387,size.height*0.2518475,size.width*0.2476695,size.height*0.3688347,size.width*0.2284564,size.height*0.4867050);
path_1.cubicTo(size.width*0.2275184,size.height*0.4924594,size.width*0.2265801,size.height*0.4982168,size.width*0.2256402,size.height*0.5039723);
path_1.cubicTo(size.width*0.2054237,size.height*0.6277950,size.width*0.1845665,size.height*0.7511693,size.width*0.1528504,size.height*0.8436376);
path_1.cubicTo(size.width*0.1211842,size.height*0.9359614,size.width*0.07867105,size.height*0.9975248,size.width*0.01503759,size.height*0.9975248);
path_1.lineTo(size.width*0.01503759,size.height);
path_1.close();

final paint = Paint()
  ..shader = ui.Gradient.linear(
    Offset(size.width*0.5,size.height*0.007425743),
    Offset(size.width*0.5,size.height*1.002475),
    [
      Color(0xff262C51),
      Color(0xff3E3F74),
    ],
  );
canvas.drawPath(path_1,paint);
// Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001879699;
// paint_1_stroke.color=Color(0xff7582F4).withOpacity(0.5);
// canvas.drawPath(path_1,paint_1_stroke);
//
// Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
// paint_1_fill.color = Color(0xff262C51).withOpacity(1.0);
// canvas.drawPath(path_1,paint_1_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}