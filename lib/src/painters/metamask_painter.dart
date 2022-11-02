import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
CustomPaint metaMaskCustomPaint(double width) => CustomPaint(
      size: Size(
          width,
          (width * 1)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: _RPSCustomPainter(),
    );

//Copy this CustomPainter code to the Bottom of the File
class _RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8603264, size.height * 0.1114250);
    path_0.lineTo(size.width * 0.5480226, size.height * 0.3433773);
    path_0.lineTo(size.width * 0.6057753, size.height * 0.2065286);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint0Stroke.color = const Color(0xffE2761B).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE2761B).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1393597, size.height * 0.1114250);
    path_1.lineTo(size.width * 0.4491525, size.height * 0.3455744);
    path_1.lineTo(size.width * 0.3942247, size.height * 0.2065286);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint1Stroke.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7479598, size.height * 0.6490898);
    path_2.lineTo(size.width * 0.6647834, size.height * 0.7765223);
    path_2.lineTo(size.width * 0.8427495, size.height * 0.8254865);
    path_2.lineTo(size.width * 0.8939109, size.height * 0.6519146);
    path_2.close();

    Paint paint2Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint2Stroke.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Stroke);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.1064030, size.height * 0.6519146);
    path_3.lineTo(size.width * 0.1572505, size.height * 0.8254865);
    path_3.lineTo(size.width * 0.3352166, size.height * 0.7765223);
    path_3.lineTo(size.width * 0.2520402, size.height * 0.6490898);
    path_3.close();

    Paint paint3Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint3Stroke.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Stroke);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3251726, size.height * 0.4337728);
    path_4.lineTo(size.width * 0.2755807, size.height * 0.5087884);
    path_4.lineTo(size.width * 0.4522913, size.height * 0.5166353);
    path_4.lineTo(size.width * 0.4460138, size.height * 0.3267420);
    path_4.close();

    Paint paint4Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint4Stroke.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Stroke);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6745135, size.height * 0.4337728);
    path_5.lineTo(size.width * 0.5521030, size.height * 0.3245449);
    path_5.lineTo(size.width * 0.5480226, size.height * 0.5166353);
    path_5.lineTo(size.width * 0.7244193, size.height * 0.5087884);
    path_5.close();

    Paint paint5Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint5Stroke.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Stroke);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3352166, size.height * 0.7765223);
    path_6.lineTo(size.width * 0.4413057, size.height * 0.7247332);
    path_6.lineTo(size.width * 0.3496547, size.height * 0.6531701);
    path_6.close();

    Paint paint6Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint6Stroke.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Stroke);

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.5583804, size.height * 0.7247332);
    path_7.lineTo(size.width * 0.6647834, size.height * 0.7765223);
    path_7.lineTo(size.width * 0.6500314, size.height * 0.6531701);
    path_7.close();

    Paint paint7Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint7Stroke.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Stroke);

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xffE4761B).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.6647834, size.height * 0.7765223);
    path_8.lineTo(size.width * 0.5583804, size.height * 0.7247332);
    path_8.lineTo(size.width * 0.5668550, size.height * 0.7940992);
    path_8.lineTo(size.width * 0.5659134, size.height * 0.8232894);
    path_8.close();

    Paint paint8Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint8Stroke.color = const Color(0xffD7C1B3).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Stroke);

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xffD7C1B3).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.3352166, size.height * 0.7765223);
    path_9.lineTo(size.width * 0.4340866, size.height * 0.8232894);
    path_9.lineTo(size.width * 0.4334589, size.height * 0.7940992);
    path_9.lineTo(size.width * 0.4413057, size.height * 0.7247332);
    path_9.close();

    Paint paint9Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint9Stroke.color = const Color(0xffD7C1B3).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Stroke);

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xffD7C1B3).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4356560, size.height * 0.6073446);
    path_10.lineTo(size.width * 0.3471438, size.height * 0.5812932);
    path_10.lineTo(size.width * 0.4096045, size.height * 0.5527307);
    path_10.close();

    Paint paint10Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint10Stroke.color = const Color(0xff233447).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Stroke);

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff233447).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.5640301, size.height * 0.6073446);
    path_11.lineTo(size.width * 0.5900816, size.height * 0.5527307);
    path_11.lineTo(size.width * 0.6528562, size.height * 0.5812932);
    path_11.close();

    Paint paint11Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint11Stroke.color = const Color(0xff233447).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Stroke);

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff233447).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.3352166, size.height * 0.7765223);
    path_12.lineTo(size.width * 0.3502825, size.height * 0.6490898);
    path_12.lineTo(size.width * 0.2520402, size.height * 0.6519146);
    path_12.close();

    Paint paint12Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint12Stroke.color = const Color(0xffCD6116).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Stroke);

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xffCD6116).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.6497175, size.height * 0.6490898);
    path_13.lineTo(size.width * 0.6647834, size.height * 0.7765223);
    path_13.lineTo(size.width * 0.7479598, size.height * 0.6519146);
    path_13.close();

    Paint paint13Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint13Stroke.color = const Color(0xffCD6116).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Stroke);

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xffCD6116).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.7244193, size.height * 0.5087884);
    path_14.lineTo(size.width * 0.5480226, size.height * 0.5166353);
    path_14.lineTo(size.width * 0.5643440, size.height * 0.6073446);
    path_14.lineTo(size.width * 0.5903955, size.height * 0.5527307);
    path_14.lineTo(size.width * 0.6531701, size.height * 0.5812932);
    path_14.close();

    Paint paint14Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint14Stroke.color = const Color(0xffCD6116).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Stroke);

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xffCD6116).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.3471438, size.height * 0.5812932);
    path_15.lineTo(size.width * 0.4099184, size.height * 0.5527307);
    path_15.lineTo(size.width * 0.4356560, size.height * 0.6073446);
    path_15.lineTo(size.width * 0.4522913, size.height * 0.5166353);
    path_15.lineTo(size.width * 0.2755807, size.height * 0.5087884);
    path_15.close();

    Paint paint15Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint15Stroke.color = const Color(0xffCD6116).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Stroke);

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xffCD6116).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.2755807, size.height * 0.5087884);
    path_16.lineTo(size.width * 0.3496547, size.height * 0.6531701);
    path_16.lineTo(size.width * 0.3471438, size.height * 0.5812932);
    path_16.close();

    Paint paint16Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint16Stroke.color = const Color(0xffE4751F).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Stroke);

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xffE4751F).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.6531701, size.height * 0.5812932);
    path_17.lineTo(size.width * 0.6500314, size.height * 0.6531701);
    path_17.lineTo(size.width * 0.7244193, size.height * 0.5087884);
    path_17.close();

    Paint paint17Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint17Stroke.color = const Color(0xffE4751F).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Stroke);

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xffE4751F).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.4522913, size.height * 0.5166353);
    path_18.lineTo(size.width * 0.4356560, size.height * 0.6073446);
    path_18.lineTo(size.width * 0.4563716, size.height * 0.7143754);
    path_18.lineTo(size.width * 0.4610797, size.height * 0.5734463);
    path_18.close();

    Paint paint18Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint18Stroke.color = const Color(0xffE4751F).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Stroke);

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xffE4751F).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.5480226, size.height * 0.5166353);
    path_19.lineTo(size.width * 0.5395480, size.height * 0.5731325);
    path_19.lineTo(size.width * 0.5433145, size.height * 0.7143754);
    path_19.lineTo(size.width * 0.5643440, size.height * 0.6073446);
    path_19.close();

    Paint paint19Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint19Stroke.color = const Color(0xffE4751F).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Stroke);

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xffE4751F).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.5643440, size.height * 0.6073446);
    path_20.lineTo(size.width * 0.5433145, size.height * 0.7143754);
    path_20.lineTo(size.width * 0.5583804, size.height * 0.7247332);
    path_20.lineTo(size.width * 0.6500314, size.height * 0.6531701);
    path_20.lineTo(size.width * 0.6531701, size.height * 0.5812932);
    path_20.close();

    Paint paint20Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint20Stroke.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Stroke);

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.3471438, size.height * 0.5812932);
    path_21.lineTo(size.width * 0.3496547, size.height * 0.6531701);
    path_21.lineTo(size.width * 0.4413057, size.height * 0.7247332);
    path_21.lineTo(size.width * 0.4563716, size.height * 0.7143754);
    path_21.lineTo(size.width * 0.4356560, size.height * 0.6073446);
    path_21.close();

    Paint paint21Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint21Stroke.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Stroke);

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.5659134, size.height * 0.8232894);
    path_22.lineTo(size.width * 0.5668550, size.height * 0.7940992);
    path_22.lineTo(size.width * 0.5590082, size.height * 0.7871940);
    path_22.lineTo(size.width * 0.4406780, size.height * 0.7871940);
    path_22.lineTo(size.width * 0.4334589, size.height * 0.7940992);
    path_22.lineTo(size.width * 0.4340866, size.height * 0.8232894);
    path_22.lineTo(size.width * 0.3352166, size.height * 0.7765223);
    path_22.lineTo(size.width * 0.3697426, size.height * 0.8047709);
    path_22.lineTo(size.width * 0.4397363, size.height * 0.8534212);
    path_22.lineTo(size.width * 0.5599498, size.height * 0.8534212);
    path_22.lineTo(size.width * 0.6302574, size.height * 0.8047709);
    path_22.lineTo(size.width * 0.6647834, size.height * 0.7765223);
    path_22.close();

    Paint paint22Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint22Stroke.color = const Color(0xffC0AD9E).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Stroke);

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xffC0AD9E).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.5583804, size.height * 0.7247332);
    path_23.lineTo(size.width * 0.5433145, size.height * 0.7143754);
    path_23.lineTo(size.width * 0.4563716, size.height * 0.7143754);
    path_23.lineTo(size.width * 0.4413057, size.height * 0.7247332);
    path_23.lineTo(size.width * 0.4334589, size.height * 0.7940992);
    path_23.lineTo(size.width * 0.4406780, size.height * 0.7871940);
    path_23.lineTo(size.width * 0.5590082, size.height * 0.7871940);
    path_23.lineTo(size.width * 0.5668550, size.height * 0.7940992);
    path_23.close();

    Paint paint23Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint23Stroke.color = const Color(0xff161616).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Stroke);

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xff161616).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.8735091, size.height * 0.3584432);
    path_24.lineTo(size.width * 0.9001883, size.height * 0.2303829);
    path_24.lineTo(size.width * 0.8603264, size.height * 0.1114250);
    path_24.lineTo(size.width * 0.5583804, size.height * 0.3355304);
    path_24.lineTo(size.width * 0.6745135, size.height * 0.4337728);
    path_24.lineTo(size.width * 0.8386692, size.height * 0.4817954);
    path_24.lineTo(size.width * 0.8750785, size.height * 0.4394225);
    path_24.lineTo(size.width * 0.8593848, size.height * 0.4281230);
    path_24.lineTo(size.width * 0.8844947, size.height * 0.4052103);
    path_24.lineTo(size.width * 0.8650345, size.height * 0.3901444);
    path_24.lineTo(size.width * 0.8901444, size.height * 0.3709981);
    path_24.close();

    Paint paint24Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint24Stroke.color = const Color(0xff763D16).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Stroke);

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xff763D16).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.09981168, size.height * 0.2303829);
    path_25.lineTo(size.width * 0.1264909, size.height * 0.3584432);
    path_25.lineTo(size.width * 0.1095417, size.height * 0.3709981);
    path_25.lineTo(size.width * 0.1346516, size.height * 0.3901444);
    path_25.lineTo(size.width * 0.1155053, size.height * 0.4052103);
    path_25.lineTo(size.width * 0.1406152, size.height * 0.4281230);
    path_25.lineTo(size.width * 0.1249215, size.height * 0.4394225);
    path_25.lineTo(size.width * 0.1610169, size.height * 0.4817954);
    path_25.lineTo(size.width * 0.3251726, size.height * 0.4337728);
    path_25.lineTo(size.width * 0.4413057, size.height * 0.3355304);
    path_25.lineTo(size.width * 0.1393597, size.height * 0.1114250);
    path_25.close();

    Paint paint25Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint25Stroke.color = const Color(0xff763D16).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Stroke);

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xff763D16).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.8386692, size.height * 0.4817954);
    path_26.lineTo(size.width * 0.6745135, size.height * 0.4337728);
    path_26.lineTo(size.width * 0.7244193, size.height * 0.5087884);
    path_26.lineTo(size.width * 0.6500314, size.height * 0.6531701);
    path_26.lineTo(size.width * 0.7479598, size.height * 0.6519146);
    path_26.lineTo(size.width * 0.8939109, size.height * 0.6519146);
    path_26.close();

    Paint paint26Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint26Stroke.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_26, paint26Stroke);

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_26, paint26Fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.3251726, size.height * 0.4337728);
    path_27.lineTo(size.width * 0.1610169, size.height * 0.4817954);
    path_27.lineTo(size.width * 0.1064030, size.height * 0.6519146);
    path_27.lineTo(size.width * 0.2520402, size.height * 0.6519146);
    path_27.lineTo(size.width * 0.3496547, size.height * 0.6531701);
    path_27.lineTo(size.width * 0.2755807, size.height * 0.5087884);
    path_27.close();

    Paint paint27Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint27Stroke.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_27, paint27Stroke);

    Paint paint27Fill = Paint()..style = PaintingStyle.fill;
    paint27Fill.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_27, paint27Fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.5480226, size.height * 0.5166353);
    path_28.lineTo(size.width * 0.5583804, size.height * 0.3355304);
    path_28.lineTo(size.width * 0.6060891, size.height * 0.2065286);
    path_28.lineTo(size.width * 0.3942247, size.height * 0.2065286);
    path_28.lineTo(size.width * 0.4413057, size.height * 0.3355304);
    path_28.lineTo(size.width * 0.4522913, size.height * 0.5166353);
    path_28.lineTo(size.width * 0.4560578, size.height * 0.5737602);
    path_28.lineTo(size.width * 0.4563716, size.height * 0.7143754);
    path_28.lineTo(size.width * 0.5433145, size.height * 0.7143754);
    path_28.lineTo(size.width * 0.5439422, size.height * 0.5737602);
    path_28.close();

    Paint paint28Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint28Stroke.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_28, paint28Stroke);

    Paint paint28Fill = Paint()..style = PaintingStyle.fill;
    paint28Fill.color = const Color(0xffF6851B).withOpacity(1.0);
    canvas.drawPath(path_28, paint28Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
