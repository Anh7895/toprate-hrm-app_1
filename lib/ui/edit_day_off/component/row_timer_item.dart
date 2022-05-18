import 'package:flutter/material.dart';

import '../../../blocs/day_off/day_off_bloc.dart';
import '../../../common/multi_language/internationalization.dart';
import '../../../common/resource/sizes.dart';
import '../../../common/resource/text_style.dart';
import '../../../common/widgets/radio_button_widget.dart';
import '../../../datasource/data/model/entity/enumMode.dart';

class ItemRowTimer extends StatelessWidget {

  final DayOffBloc dayOffBloc;
   ItemRowTimer({required this.dayOffBloc});

  @override
  Widget build(BuildContext context) {
    return dayOffBloc.isDayOffOneDay
        ? Container(
      margin: EdgeInsets.symmetric(vertical: height_20),
      child: Row(
        children: [
          Expanded(
            child: RadioItem<TimeOff>(
                text: S.of(context).translate("allDay"),
                textStyle: TextStyleCommon.textHintStyle,
                onChanged: (value) {
                  dayOffBloc.add(ClickCheckboxTimeOffEvent(value: value));
                },
                value:TimeOff.Allday,
                groupValue: dayOffBloc.timeOff),
          ),
          Expanded(
            child: RadioItem<TimeOff>(
            text: S.of(context).translate("morning"),
            textStyle: TextStyleCommon.textHintStyle,
            onChanged: (value) {
              dayOffBloc.add(ClickCheckboxTimeOffEvent(value: value));
            },
            value:TimeOff.Morning,
            groupValue: dayOffBloc.timeOff),
          ),
          Expanded(
            child: RadioItem<TimeOff>(
                text: S.of(context).translate("afternoon"),
                textStyle: TextStyleCommon.textHintStyle,
                onChanged: (value) {
                  dayOffBloc.add(ClickCheckboxTimeOffEvent(value: value));
                },
                value:TimeOff.Afternoon,
                groupValue: dayOffBloc.timeOff),
          )
        ],
      ),
    )
        : SizedBox(
      height: height_20,
    );
  }
}
