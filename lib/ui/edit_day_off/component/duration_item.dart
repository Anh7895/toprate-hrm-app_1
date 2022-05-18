import 'package:flutter/material.dart';
import 'package:toprate_hrm/blocs/day_off/day_off_bloc.dart';

import '../../../common/multi_language/internationalization.dart';
import '../../../common/resource/sizes.dart';
import '../../../common/resource/text_style.dart';
import '../../../common/widgets/radio_button_widget.dart';
import '../../../datasource/data/model/entity/enumMode.dart';

class ItemDuration extends StatelessWidget {
 final DayOffBloc dayOffBloc;

  ItemDuration({required this.dayOffBloc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            S.of(context).translate("duration"),
            style: TextStyleCommon.textTitleStyle,
          ),
        ),
        Row(
          children: [
            RadioItem<Mode>(
                text: S.of(context).translate("oneDay"),
                textStyle: TextStyleCommon.textHintStyle,
                onChanged: (value) {
                  dayOffBloc.add(ClickCheckboxDurationEvent(
                      value: Mode.OneDay, isSelect: true));
                },
                value: Mode.OneDay,
                groupValue: dayOffBloc.character),
            SizedBox(
              width: width_40,
            ),
            Row(
              children: [
                RadioItem<Mode>(
                    text: S.of(context).translate("manyDay"),
                    textStyle: TextStyleCommon.textHintStyle,
                    onChanged: (value) {
                      dayOffBloc.add(ClickCheckboxDurationEvent(
                          value: Mode.ManyDay, isSelect: false));
                    },
                    value: Mode.ManyDay,
                    groupValue: dayOffBloc.character),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
