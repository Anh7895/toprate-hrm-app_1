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

  static TextStyle textStyleNormalTitle = TextStyle(
      color: ThemeColor.clr_136849,
      fontSize: fontSize_16,
      fontWeight: FontWeight.w700);

  static TextStyle textStyleWhiteNormalTitle = TextStyle(
      color: Colors.white,
      fontSize: fontSize_16,
      fontWeight: FontWeight.w700);

  static TextStyle textStyleSmallTitle = TextStyle(
      color: ThemeColor.clr_136849,
      fontSize: fontSize_14,
      fontWeight: FontWeight.w700);

  static TextStyle textStyleWhiteSmallTitle = TextStyle(
      color: Colors.white,
      fontSize: fontSize_14,
      fontWeight: FontWeight.w700);

  static TextStyle textStyle136849SmallTitle = TextStyle(
      color: ThemeColor.clr_136849,
      fontSize: fontSize_14,
      fontWeight: FontWeight.w700);


  static TextStyle textStyle136849Normal = TextStyle(
      color: ThemeColor.clr_136849,
      fontSize: fontSize_14,
      fontWeight: FontWeight.w500);

  static TextStyle textStyleWhiteSize12 = TextStyle(
      color: Colors.white,
      fontSize: fontSize_12,
      fontWeight: FontWeight.w700);

  static TextStyle textStyleWhiteSize12Normal = TextStyle(
      color: Colors.white,
      fontSize: fontSize_12,
      fontWeight: FontWeight.normal);

  static TextStyle textStyleWhiteSize11Normal = TextStyle(
      color: Colors.white,
      fontSize: fontSize_11,
      fontWeight: FontWeight.normal);

  static TextStyle textStyleWhiteSmallContent = TextStyle(
      color: Colors.white,
      fontSize: fontSize_14,
      fontWeight: FontWeight.normal);

  static TextStyle textStyleSmallContent = TextStyle(
      color: ThemeColor.clr_136849,
      fontSize: fontSize_14,
      fontWeight: FontWeight.normal);

  static TextStyle textStyleColor136849Size14 = TextStyle(
      color: ThemeColor.clr_136849,
      fontSize: fontSize_14,
      fontWeight: FontWeight.w700);
  static TextStyle textStyleColorBlackSize12 = TextStyle(
      color: Colors.black,
      fontSize: fontSize_12,
      fontWeight: FontWeight.w700);

  static TextStyle textStyleColor002113Size12 = TextStyle(
      color: ThemeColor.clr_002113,
      fontSize: fontSize_12,
      fontWeight: FontWeight.w700);

  static TextStyle textStyleColor002113Size14 = TextStyle(
      color: ThemeColor.clr_002113,
      fontSize: fontSize_14,
      fontWeight: FontWeight.w700);

  static TextStyle textStyleBlackSmallContent = TextStyle(
      color: Colors.black,
      fontSize: fontSize_12,
      fontWeight: FontWeight.normal);

  //login
  static TextStyle textStyleWelcome = TextStyle(
      color: ThemeColor.clr_2D3142,
      fontSize: fontSize_28,
      fontWeight: FontWeight.w500,);

  static TextStyle textStyleTopRate = TextStyle(
      color: ThemeColor.clr_CE6161,
      fontSize: fontSize_28,
      fontWeight: FontWeight.w500);

  static TextStyle textStyleDetailWelcome = TextStyle(
      color: ThemeColor.clr_4C5980,
      fontSize: fontSize_16,
      fontWeight: FontWeight.w400);

  static TextStyle textStyleButtonWelcome = TextStyle(
      color: ThemeColor.clr_FFFFFF,
      fontSize: fontSize_16,
      fontWeight: FontWeight.w500);

  //notification
  static TextStyle textStyleTopRateApp = TextStyle(
      color: ThemeColor.clr_2D3142,
      fontSize: fontSize_18,
      fontWeight: FontWeight.w500);

  static TextStyle textStyleDetailNotification = TextStyle(
      color: ThemeColor.clr_2D3142,
      fontSize: fontSize_12,
      fontWeight: FontWeight.w400);

  //Home
  static TextStyle textHiName = TextStyle(
    color: ThemeColor.clr_2D3142,
    fontSize: fontSize_32,
    fontWeight: FontWeight.w500
  );

  static TextStyle textDate =  TextStyle(
    color: ThemeColor.clr_CE6161,
    fontSize: fontSize_12,
    fontWeight: FontWeight.w500
  );

  static TextStyle textHomeTitle = TextStyle(
    color:  ThemeColor.clr_2D3142,
    fontSize: fontSize_18,
    fontWeight: FontWeight.w500
  );

  static TextStyle textTopCardItem = TextStyle(
      color: ThemeColor.clr_4C5980,
      fontSize: fontSize_14,
      fontWeight: FontWeight.w400,
      );

  static TextStyle textBottomCardItem = TextStyle(
      color: ThemeColor.clr_9C9EB9,
      fontSize: fontSize_14,
      fontWeight: FontWeight.w400
      );
}

