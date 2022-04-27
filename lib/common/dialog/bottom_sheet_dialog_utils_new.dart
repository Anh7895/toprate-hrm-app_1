import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

showAlertBottomSheetDialogNew(BuildContext context,
    {double? height,
    String? title,
    String? message,
    VoidCallback? onConfirm,
    String? icon,
    bool? isDismissible}) {
  return showModalBottomSheet<void>(
      isDismissible: isDismissible??true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius_16),
      ),
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(height_8)),
          margin:
              EdgeInsets.symmetric(horizontal: width_16, vertical: width_16),
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: height_8,
              ),
              // Container(
              //   color: ThemeColor.clr_C7C7C7,
              //   width: width_68,
              //   height: height_4,
              // ),
              SizedBox(
                height: height_36,
              ),
              SvgPicture.asset(
                icon ?? ic_check_mark,
                width: width_96,
                height: height_96,
              ),
              SizedBox(
                height: height_16,
              ),
              Text(
                title ?? "",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize_16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height_16,
              ),
              Text(
                message ?? "",
                style: TextStyle(
                  color: ThemeColor.clr_4C5980,
                  fontSize: fontSize_20,
                  fontWeight: FontWeight.normal,
                  fontFamily: TextConstants.fontRubik,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height_32,
              ),
              BaseButton(
                onPressed: () {
                  Navigator.pop(context);
                  FocusScope.of(context).unfocus();
                  if (onConfirm != null) {
                    onConfirm();
                  }
                },
                margin: EdgeInsets.only(
                    bottom: height_24, left: width_50, right: width_50),
                height: height_52,
                style: TextStyleCommon.textStyleWhiteSmallTitle,
                backgroundColor: ThemeColor.clr_CE6161,
                title: "Đóng",
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        );
      });
}
