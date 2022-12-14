import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';

class ButtonCustomWidget extends StatelessWidget {
  final Function onPress;
  final double? height;
  final Color? color, colorText;
  final String? title;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final TextStyle? titleStyle;
  final Widget? leadingIcon;

  const ButtonCustomWidget(
      {Key? key,
      required this.onPress,
      this.height,
      this.titleStyle,
      this.color,
      this.margin,
      this.title,
      this.colorText,
      this.leadingIcon,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress.call();
      },
      child: Container(
        height: height ?? height_44,
        padding: padding ?? EdgeInsets.all(0),
        margin: margin ?? EdgeInsets.symmetric(vertical: width_8),
        decoration: BoxDecoration(
            color: color ?? ThemeColor.clr_CE6161,
            borderRadius: BorderRadius.all(Radius.circular(radius_8))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leadingIcon != null ? leadingIcon! : SizedBox(),
            Center(
              child: Text(title ?? '',
                  style: titleStyle ??
                      TextStyleCommon.textStyleButton(context,
                          fontSize:
                              leadingIcon != null ? fontSize_12 : fontSize_16)),
            ),
          ],
        ),
      ),
    );
  }
}
