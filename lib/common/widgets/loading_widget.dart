import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: ThemeColor.clr_323232.withOpacity(0.3),
          child: Center(
              child: Container(
                width: width_24,
                height: width_24,
                child: CircularProgressIndicator(),
              ))),
    );
  }
}
