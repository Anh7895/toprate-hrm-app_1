import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../multi_language/internationalization.dart';
import '../resource/sizes.dart';
import '../resource/strings.dart';
import '../resource/text_style.dart';
import '../resource/theme_color.dart';
import '../widgets/base_button.dart';
import '../widgets/http_stream_handler.dart';
import '../widgets/images/svg_image_widget.dart';

showDialogConfirm(BuildContext context,{String? icon, String? title, String? message}) async {
  return await showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: width_20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                icon!=''?SVGImageWidget(
                  height: height_72,
                  width: width_72,
                  url: icon,
                ):Container(),
                SizedBox(
                  height: height_15,
                ),
                Text(title??"",
                    style: TextStyleCommon.textHeaderDialogStyle(context),
                    textAlign: TextAlign.center),
                message!=""?SizedBox(height: height_20,):Container(),
                Text(
                  message??"",
                  style: TextStyleCommon.textMessageDialogStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height_20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width_16),
                  child: BaseButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    backgroundColor: ThemeColor.clr_CE6161,
                    title: S.of(context).translate("close"),
                  ),
                )
              ],
            ),
          ),
        );
      });
}