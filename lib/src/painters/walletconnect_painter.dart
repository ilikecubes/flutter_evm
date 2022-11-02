import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
CustomPaint walletConnectCustomPaint(double width) => CustomPaint(
      size: Size(
          width,
          (width * 0.6916666666666667)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: _RPSCustomPainter(),
    );

//Copy this CustomPainter code to the Bottom of the File
class _RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2637771, size.height * 0.2830849);
    path_0.cubicTo(
        size.width * 0.3942396,
        size.height * 0.09840934,
        size.width * 0.6057604,
        size.height * 0.09840934,
        size.width * 0.7362250,
        size.height * 0.2830849);
    path_0.lineTo(size.width * 0.7519250, size.height * 0.3053102);
    path_0.cubicTo(
        size.width * 0.7584479,
        size.height * 0.3145452,
        size.width * 0.7584479,
        size.height * 0.3295151,
        size.width * 0.7519250,
        size.height * 0.3387500);
    path_0.lineTo(size.width * 0.6982146, size.height * 0.4147801);
    path_0.cubicTo(
        size.width * 0.6949521,
        size.height * 0.4193976,
        size.width * 0.6896646,
        size.height * 0.4193976,
        size.width * 0.6864021,
        size.height * 0.4147801);
    path_0.lineTo(size.width * 0.6647958, size.height * 0.3841958);
    path_0.cubicTo(
        size.width * 0.5737813,
        size.height * 0.2553602,
        size.width * 0.4262188,
        size.height * 0.2553602,
        size.width * 0.3352042,
        size.height * 0.3841958);
    path_0.lineTo(size.width * 0.3120646, size.height * 0.4169488);
    path_0.cubicTo(
        size.width * 0.3088042,
        size.height * 0.4215663,
        size.width * 0.3035167,
        size.height * 0.4215663,
        size.width * 0.3002542,
        size.height * 0.4169488);
    path_0.lineTo(size.width * 0.2465438, size.height * 0.3409187);
    path_0.cubicTo(
        size.width * 0.2400188,
        size.height * 0.3316837,
        size.width * 0.2400188,
        size.height * 0.3167139,
        size.width * 0.2465438,
        size.height * 0.3074789);
    path_0.close();
    path_0.moveTo(size.width * 0.8473042, size.height * 0.4403253);
    path_0.lineTo(size.width * 0.8951083, size.height * 0.5079910);
    path_0.cubicTo(
        size.width * 0.9016312,
        size.height * 0.5172259,
        size.width * 0.9016312,
        size.height * 0.5321958,
        size.width * 0.8951083,
        size.height * 0.5414307);
    path_0.lineTo(size.width * 0.6795604, size.height * 0.8465542);
    path_0.cubicTo(
        size.width * 0.6730375,
        size.height * 0.8557861,
        size.width * 0.6624604,
        size.height * 0.8557861,
        size.width * 0.6559375,
        size.height * 0.8465542);
    path_0.lineTo(size.width * 0.5029542, size.height * 0.6300000);
    path_0.cubicTo(
        size.width * 0.5013229,
        size.height * 0.6276898,
        size.width * 0.4986792,
        size.height * 0.6276898,
        size.width * 0.4970479,
        size.height * 0.6300000);
    path_0.lineTo(size.width * 0.3440688, size.height * 0.8465542);
    path_0.cubicTo(
        size.width * 0.3375458,
        size.height * 0.8557861,
        size.width * 0.3269688,
        size.height * 0.8557861,
        size.width * 0.3204458,
        size.height * 0.8465542);
    path_0.lineTo(size.width * 0.1048923, size.height * 0.5414277);
    path_0.cubicTo(
        size.width * 0.09836917,
        size.height * 0.5321928,
        size.width * 0.09836917,
        size.height * 0.5172229,
        size.width * 0.1048923,
        size.height * 0.5079880);
    path_0.lineTo(size.width * 0.1526956, size.height * 0.4403193);
    path_0.cubicTo(
        size.width * 0.1592188,
        size.height * 0.4310873,
        size.width * 0.1697950,
        size.height * 0.4310873,
        size.width * 0.1763181,
        size.height * 0.4403193);
    path_0.lineTo(size.width * 0.3293042, size.height * 0.6568765);
    path_0.cubicTo(
        size.width * 0.3309333,
        size.height * 0.6591867,
        size.width * 0.3335771,
        size.height * 0.6591867,
        size.width * 0.3352083,
        size.height * 0.6568765);
    path_0.lineTo(size.width * 0.4881854, size.height * 0.4403193);
    path_0.cubicTo(
        size.width * 0.4947083,
        size.height * 0.4310873,
        size.width * 0.5052854,
        size.height * 0.4310873,
        size.width * 0.5118083,
        size.height * 0.4403193);
    path_0.lineTo(size.width * 0.6647938, size.height * 0.6568765);
    path_0.cubicTo(
        size.width * 0.6664250,
        size.height * 0.6591867,
        size.width * 0.6690688,
        size.height * 0.6591867,
        size.width * 0.6707000,
        size.height * 0.6568765);
    path_0.lineTo(size.width * 0.8236813, size.height * 0.4403253);
    path_0.cubicTo(
        size.width * 0.8302063,
        size.height * 0.4310904,
        size.width * 0.8407813,
        size.height * 0.4310904,
        size.width * 0.8473042,
        size.height * 0.4403253);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff3396ff).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
