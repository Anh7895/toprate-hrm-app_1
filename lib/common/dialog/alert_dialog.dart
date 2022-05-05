import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../multi_language/internationalization.dart';
import '../resource/sizes.dart';
import '../resource/strings.dart';
import '../resource/text_style.dart';
import '../resource/theme_color.dart';
import '../widgets/base_button.dart';
import '../widgets/http_stream_handler.dart';

_showDialogConfirm(BuildContext context) async {
  return await showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius_16),
          ),
          child: Container(
            height: height_200,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        S.of(context).translate("messageSendInfo"),
                        style: TextStyleCommon.textHeaderDialogStyle(context),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: BaseButton(
                            height: height_56,
                            title: S.of(context).translate("textCancel"),
                            style:
                            TextStyleCommon.textButtonStyle(context),
                            backgroundColor: ThemeColor.clr_4C5980,
                          ),
                        ),
                      ),
                      Expanded(
                        child: BaseButton(
                          height: height_56,
                          title: S.of(context).translate("textContinue"),
                          style:
                          TextStyleCommon.textButtonStyle(context),
                          backgroundColor: ThemeColor.clr_CE6161,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}