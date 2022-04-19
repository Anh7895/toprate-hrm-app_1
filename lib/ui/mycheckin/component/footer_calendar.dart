
import 'package:flutter/material.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';

class FooterCalendar extends StatelessWidget {
  final String? workingDay;
  const FooterCalendar({Key? key, this.workingDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
      height: height_40,
      child: Center(
        child: Text(
          "Số ngày công: $workingDay/22",
          style: TextStyleCommon.buttonText14px(context,
              color: ThemeColor.clr_002113, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
