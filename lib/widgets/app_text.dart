import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String title;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double lSpacing;
  final TextAlign textAlign;
  Function callback;
  final bool clickable;
  final bool allCaps;
  final bool needOverflow;
  final int maxLines;

  AppText({
    Key key,
    @required this.title,
    this.textColor,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16,
    this.lSpacing = 0.2,
    this.textAlign = TextAlign.start,
    this.callback,
    this.clickable = false,
    this.allCaps = false,
    this.needOverflow = false,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return clickable
        ? InkWell(
      onTap: callback,
      child: getText(),
    )
        : getText();
  }

  Widget getText() {
    return SizedBox(
      child: Text(
        allCaps ? title.toUpperCase() : title,
        textAlign: textAlign,
        maxLines: needOverflow?2:null,
        overflow: needOverflow?TextOverflow.ellipsis:null,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: textColor,
          letterSpacing: lSpacing,
        ),
      ),
    );
  }
}
