import 'package:flutter/material.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginButton extends StatelessWidget {
  /// The text name Social
  final String? loginName;

  /// The image asset Svg Logo Social
  final String? imageAssetsSvg;

  /// The image asset Png Logo Social
  final String? imageAssetsPng;

  /// The callback that is be called when the button is press
  final doLogin;

  /// The widget replaces default widget
  final Widget? customWidget;

  /// The width of the button.
  final double? width;

  /// The width of the button.
  final double? height;

  /// The size of Icon
  final double? size;

  /// The style text name
  final TextStyle? styleName;

  /// The color card background
  final Color colorBackground;

  const SocialLoginButton(
      {Key? key,
      this.imageAssetsSvg,
      this.loginName,
      this.imageAssetsPng,
      required this.doLogin,
      this.customWidget,
      this.width = 220,
      this.height = 40,
      this.size = 30,
      this.styleName,
      this.colorBackground = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: doLogin,
        child: customWidget == null
            ? Card(
                elevation: 2,
                color: ThemeColor.clr_CE6161,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: height,
                  width: width,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: width_10,),
                      imageAssetsPng != null
                          ? Image.asset(
                              imageAssetsPng!,
                              width: size,
                              height: size,
                            )
                          : SvgPicture.asset(
                              imageAssetsSvg!,
                              width: size,
                              height: size,
                            ),
                      SizedBox(width: width_40,),
                      Container(
                          margin: EdgeInsets.only(left: 4),
                          child: Text(loginName!,
                              style: styleName == null
                                  ? TextStyle(
                                      color: ThemeColor.clr_3E3E3E,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                                  : styleName)),
                    ],
                  ),
                ),
              )
            : customWidget);
  }
}
