import 'package:flutter_base_app/config/util/app_theme.dart';
import 'package:flutter/material.dart';

class StrokeText extends StatelessWidget {
  final String text;
  final double strokeWidth;
  final double fontSize;
  final Color textColor;
  final Color strokeColor;

  const StrokeText({
    super.key,
    required this.text,
    required this.strokeWidth,
    required this.textColor,
    required this.strokeColor,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: AppTheme.fontName,
              fontWeight: FontWeight.bold,
              fontSize: fontSize + 2,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth
                ..color = strokeColor,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: AppTheme.fontName,
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
                color: textColor),
          ),
        ],
      ),
    );
  }
}
