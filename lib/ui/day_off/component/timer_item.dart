
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../blocs/day_off/day_off_bloc.dart';
import '../../../common/resource/name_image.dart';
import '../../../common/resource/sizes.dart';
import '../../../common/widgets/images/svg_image_widget.dart';

class ItemTimer<T> extends StatelessWidget {
 final DayOffBloc dayOffBloc;
 final String text;
 final TextStyle textStyle;
 final TextStyle textStyleHint;
 final BuildContext context;

  ItemTimer({
    required this.dayOffBloc,
    required this.text,
    required this.textStyle,
    required this.context,
    required this.textStyleHint
  });
  Future<void> _selectFromDate() async {
    showDialogDate(CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      initialDateTime: DateTime.now(),
      use24hFormat: true,
      // This is called when t      maximumDate: DateTime.now(),he user changes the dateTime.
      onDateTimeChanged: (DateTime newDateTime) {
        dayOffBloc.add(SetSelectedFromDateEvent(
            setSelectedFromDate:
            newDateTime));
      },
    ));
  }


  Future<void> _selectToDate() async {
    showDialogDate(CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      initialDateTime: DateTime.now(),
      use24hFormat: true,
      // This is called when the user changes the dateTime.
      onDateTimeChanged: (DateTime newDateTime) {
        dayOffBloc.add(SetSelectedToDateEvent(
            setSelectedToDate:
            newDateTime));
      },
    ));
  }

  void showDialogDate(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
          height: 216,
          padding: const EdgeInsets.only(top: 6.0),
          // The Bottom margin is provided to align the popup above the system navigation bar.
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // Provide a background color for the popup.
          color: CupertinoColors.systemBackground.resolveFrom(context),
          // Use a SafeArea widget to avoid system overlaps.
          child: SafeArea(
            top: false,
            child: child,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height_15),
        Text(
          text,
          style: textStyle,
        ),
        SizedBox(
          height: height_8,
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectFromDate();
                },
                child: Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 30,
                        child: TextFormField(
                          readOnly: true,
                          controller: dayOffBloc.fromController,
                          style: textStyleHint,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: SVGImageWidget(
                        url: ic_png_ic_calendar_without_color,
                        width: width_24,
                        height: width_24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: height_35,
            ),
            !dayOffBloc.isDayOffOneDay
                ? Expanded(
                    child: GestureDetector(
                      onTap: () {
                       _selectToDate();
                      },
                      child: Row(
                        children: [
                          Flexible(
                            flex: 4,
                            child: Container(
                              height: 30,
                              child: TextFormField(
                                readOnly: true,
                                controller: dayOffBloc.toController,
                                style: textStyleHint,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: SVGImageWidget(
                              url: ic_png_ic_calendar_without_color,
                              width: width_24,
                              height: width_24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Expanded(child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
