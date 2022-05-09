import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/blocs/day_off/day_off_bloc.dart';

import '../../../common/multi_language/internationalization.dart';
import '../../../common/resource/text_style.dart';
import '../../../common/resource/theme_color.dart';

class ItemReason extends StatelessWidget {
  final DayOffBloc dayOffBloc;
  const ItemReason({required this.dayOffBloc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).translate("reason"),
            style: TextStyleCommon.textTitleStyle),
        DropdownButton<ReasonSettings>(
          value: dayOffBloc.defaultReason,
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: ThemeColor.clr_979797,
          ),
          iconSize: 24,
          elevation: 16,
          isExpanded: true,
          style: TextStyle(color: ThemeColor.clr_979797),
          underline: Container(
            height: 1,
            color: ThemeColor.clr_979797,
          ),
          onChanged: (ReasonSettings? newValue) {
            dayOffBloc.add(SetReasonEvent(reason: newValue));
          },
          items: dayOffBloc.listReasonSettings
              .map<DropdownMenuItem<ReasonSettings>>((ReasonSettings value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value.content ?? "",
                  style: TextStyleCommon.textHintStyle),
            );
          }).toList(),
        )
      ],
    );
  }
}
