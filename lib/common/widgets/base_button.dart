import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final double? height, width;
  final EdgeInsets? padding, margin;
  final Color? backgroundColor, colorText;
  final String? title;
  final TextStyle? style;
  final VoidCallback? onPressed;

  const BaseButton(
      {Key? key,
      this.height,
      this.width,
      this.padding,
      this.margin,
      this.title,
      this.backgroundColor,
      this.colorText,
      this.style,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height??height_50,
        margin: margin ??
            EdgeInsets.symmetric(vertical: width_4, horizontal: width_8),
        padding: padding ?? EdgeInsets.all(height_8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: backgroundColor ?? ThemeColor.clr_CE6161,
            borderRadius: BorderRadius.all(Radius.circular(height_16))),
        child: Text(
          "$title",
          style: style ?? TextStyleCommon.textButtonStyle(context),
        ),
      ),
    );
  }
}
