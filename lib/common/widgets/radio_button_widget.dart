import 'package:flutter/material.dart';

import '../../../common/resource/sizes.dart';
import '../../../common/resource/theme_color.dart';

class RadioItem<T> extends StatelessWidget {
  String text;
  TextStyle textStyle;
  final ValueChanged<T?>? onChanged;
  T? value;
  T? groupValue;

  RadioItem({
    required this.text,
    required this.textStyle,
    required this.onChanged,
    required this.value,
    required this.groupValue,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: width_35,
          child: Radio<T?>(
            activeColor: ThemeColor.clr_979797,
            value: value,
            groupValue: groupValue,
            onChanged: (value){
              if(onChanged == null) return;
              onChanged!(value);
            },
          ),
        ),
        Text(text,
            style: textStyle)
      ],
    );
  }
}
