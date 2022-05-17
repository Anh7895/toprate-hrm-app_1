import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyleCommon {
  static TextStyle displayHeader(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
        fontSize: 10,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontStyle: FontStyle.normal,
        color: color ?? ThemeColor.clr_151A35,
        fontFamily: TextConstants.fontInter);
  }

  static TextStyle labelInputText(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
        fontSize: 13,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontStyle: FontStyle.normal,
        color: color ?? ThemeColor.clr_151A35,
        fontFamily: TextConstants.fontInter);
  }

  static TextStyle bottomButton(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 16,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle titleAppBar(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize_16,
          fontWeight: fontWeight ?? FontWeight.w600,
          color: color ?? ThemeColor.clr_FFFFFF,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle textStyleSubFeature(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize_16,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: color ?? ThemeColor.clr_1472C9,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle titleScreenTab(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize_24,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_FFFFFF,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle nameBill(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize_23,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_282828,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle normalTextBill(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize ?? fontSize_16,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_323232,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle font16StyleNormal(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize ?? fontSize_14,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? ThemeColor.clr_3E3E3E,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle textButtonUnderline(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? fontSize_14,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? ThemeColor.clr_136849,
      decoration: TextDecoration.underline,
      fontFamily: TextConstants.fontInter,
    );
  }

  static TextStyle font12pxStyleNormal(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? height}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize_12,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? ThemeColor.clr_002113,
      fontFamily: TextConstants.fontInter,
      height: height??2,

    );
  }


  static TextStyle textStyleButton(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize??fontSize_16,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? ThemeColor.clr_FFFFFF,
      fontFamily: TextConstants.fontInter,
    );
  }



  static TextStyle font18pxStyleNormal(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 18,
          fontWeight: fontWeight ?? FontWeight.w300,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle font14pxStyleNormal(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 14,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle font16pxStyleNormal(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 16,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle font24pxStyleNormal(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? height}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
        fontSize: 24,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: color ?? ThemeColor.clr_151A35,
        fontFamily: TextConstants.fontInter,
        height: height);
  }

  static TextStyle font18pxStyleUnderline(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize ?? 18,
          fontWeight: fontWeight ?? FontWeight.w300,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
          decoration: TextDecoration.underline,
        );
  }

  static TextStyle dialogTitleAlert(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize_16,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_323232,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle dialogContentAlert(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 14,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static Future<TextStyle> overallContent(BuildContext context,
      {Color? color, FontWeight? fontWeight}) async {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 36,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle overallContent48px(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 48,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle overallTitle(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 13,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle textTitleHL1(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize ?? 18,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle buttonText14px(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: color ?? ThemeColor.clr_151A35,
          fontFamily: TextConstants.fontInter,
        );
  }

  static TextStyle dialogContentAlertLight(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 14,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: TextConstants.fontInter,
        );
  }


///Card Style
  static TextStyle textCustomCardStyle(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ThemeColor.clr_4C5980,
      fontFamily: TextConstants.fontMontserrat,
    );
  }

  ///TextListView
  static TextStyle textHeaderListViewStyle = TextStyle(
    color: ThemeColor.clr_4C5980,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: TextConstants.fontMontserrat,
  );

  static TextStyle textListViewItemStyle(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? 16,
      overflow: TextOverflow.ellipsis,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? ThemeColor.clr_FFFFFF,
      fontFamily: TextConstants.fontMontserrat,
    );
  }
  ///Base Style
  static TextStyle textCustomNormalStyle(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? ThemeColor.clr_CE6161,
      fontFamily: TextConstants.fontMontserrat,
    );
  }
  static TextStyle textCustomAppBarStyle(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? 32,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? ThemeColor.clr_2D3142,
      fontFamily: TextConstants.fontMontserrat,
    );
  }
  static TextStyle textAppBarStyle = TextStyle(
    color: ThemeColor.clr_CE6161,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontFamily: TextConstants.fontMontserrat,
  );
  static TextStyle textTitleStyle = TextStyle(
    color: ThemeColor.clr_2D3142,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: TextConstants.fontMontserrat,
  );
  static TextStyle textNormalStyle = TextStyle(
    color: ThemeColor.clr_2D3142,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: TextConstants.fontMontserrat,
  );
  static TextStyle textHintStyle = TextStyle(
    color: ThemeColor.clr_979797,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: TextConstants.fontMontserrat,
  );
  static TextStyle textButtonStyle(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? ThemeColor.clr_FFFFFF,
      fontFamily: TextConstants.fontMontserrat,
    );
  }


  ///Dialog Style
  static TextStyle textMessageDialogStyle = TextStyle(
    color: ThemeColor.clr_2D3142,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: TextConstants.fontMontserrat,
  );

  static TextStyle textHeaderDialogStyle(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? 20,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? ThemeColor.clr_4C5980,
      fontFamily: TextConstants.fontMontserrat,
    );
  }
  ///Style in Extra Screens
  //Home
  static TextStyle textHeaderInLoginStyle(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? 28,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? ThemeColor.clr_2D3142,
      fontFamily: TextConstants.fontMontserrat,
    );
  }
  static TextStyle textTitleInLoginStyle(BuildContext context,
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return Theme.of(context).textTheme.headline1!.copyWith(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? ThemeColor.clr_4C5980,
      fontFamily: TextConstants.fontMontserrat,
    );
  }


}

