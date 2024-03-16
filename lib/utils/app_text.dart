import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  const AppText(this.text,
      {super.key,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.textAlign,
      this.height,
      this.fontStyle,
      this.textOverflow,
      this.textDecoration,
      this.decorationStyle,
      this.decorationThickness,
      this.decorationColor,
      this.useOpenSansFont = false,
      this.maxLines});

  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? height;
  final FontStyle? fontStyle;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
  final double? decorationThickness;
  final TextDecorationStyle? decorationStyle;
  final bool useOpenSansFont;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      overflow: textOverflow ?? TextOverflow.ellipsis,
      maxLines: maxLines ?? 6,
      textAlign: textAlign,
      style: useOpenSansFont
          ? GoogleFonts.openSans(
              color: color,
              height: height ?? 1.5,
              fontSize: fontSize,
              fontStyle: fontStyle,
              fontWeight: fontWeight,
              decoration: textDecoration,
              decorationColor: decorationColor,
              decorationThickness: decorationThickness,
              decorationStyle: decorationStyle,
            )
          : TextStyle(
              color: color,
              height: height ?? 1.5,
              fontSize: fontSize,
              fontStyle: fontStyle,
              fontWeight: fontWeight,
              decoration: textDecoration,
              decorationColor: decorationColor,
              decorationThickness: decorationThickness,
              decorationStyle: decorationStyle,
            ),
    );
  }
}
