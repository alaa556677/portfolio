import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class CustomRichText extends StatelessWidget {
  final double? fontSize;
  final double? wordSpacing;
  final double? height;
  final FontWeight? fontWeight;
  final FontWeight? fontWeight2;
  final Color? fontColor;
  final Color? fontColor2;
  final String? fontFamily;
  final String? text;
  final String? text2;
  final TextAlign align;
  final bool? isMultiLine;
  final bool? isInSearch;
  final InlineSpan? textSpan;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
  final TextOverflow overFlow;
  final int? maxLines;
  final bool isTextTheme;
  final bool isTextTheme2;
  final TextStyle? themeStyle;
  final TextStyle? themeStyle2;
  final GestureRecognizer? onTapText2;

  const CustomRichText({
    super.key,
    this.text,
    this.text2,
    this.fontSize,
    this.fontColor,
    this.fontColor2,
    this.fontWeight = FontWeight.w400,
    this.fontWeight2 = FontWeight.w400,
    this.fontFamily,
    this.align = TextAlign.start,
    this.wordSpacing,
    this.height,
    this.isMultiLine = false,
    this.isInSearch = false,
    this.textSpan,
    this.textDecoration,
    this.decorationColor,
    this.overFlow = TextOverflow.clip,
    this.maxLines,
    this.isTextTheme = false,
    this.isTextTheme2 = false,
    this.themeStyle,
    this.themeStyle2,
    this.onTapText2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: align,
      maxLines: maxLines,
      overflow: overFlow,
      softWrap: true,
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: isTextTheme
                ? themeStyle
                : TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: fontColor,
              fontFamily: fontFamily,
              wordSpacing: wordSpacing,
              height: height,
              decoration: textDecoration,
              decorationColor: decorationColor,
            ),
          ),
          TextSpan(
            text: text2,
            recognizer: onTapText2,
            style: isTextTheme2
                ? themeStyle2
                : TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight2,
              color: fontColor2,
              fontFamily: fontFamily,
              wordSpacing: wordSpacing,
              height: height,
              decoration: textDecoration,
              decorationColor: decorationColor,
            ),
          ),
        ],
      ),
    );
  }
}
