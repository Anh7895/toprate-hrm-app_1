import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:intl/intl.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/day_off/day_off_bloc.dart';
import 'package:toprate_hrm/common/dialog/alert_dialog.dart';
import 'package:toprate_hrm/common/dialog/bottom_sheet_dialog_utils_new.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/images/svg_image_widget.dart';
import 'package:toprate_hrm/datasource/data/model/entity/enumMode.dart';

import '../../common/multi_language/internationalization.dart';

class DayOffScreen extends StatefulWidget {
  const DayOffScreen({Key? key}) : super(key: key);

  @override
  State<DayOffScreen> createState() => _DayOffScreenState();
}

class _DayOffScreenState extends State<DayOffScreen> {
  DayOffBloc _bloc = Injector.resolve<DayOffBloc>();

  Future<void> _selectFromDate(BuildContext context) async {
    showDialogDate(CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      initialDateTime: DateTime.now(),
      use24hFormat: true,
      // This is called when t      maximumDate: DateTime.now(),he user changes the dateTime.
      onDateTimeChanged: (DateTime newDateTime) {
        _bloc.add(SetSelectedFromDateEvent(
            setSelectedFromDate:
                DateFormat("dd/MM/yyyy").format(newDateTime)));
      },
    ));
  }


  Future<void> _selectToDate(BuildContext context) async {
    showDialogDate(CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      initialDateTime: DateTime.now(),
      use24hFormat: true,
      // This is called when the user changes the dateTime.
      onDateTimeChanged: (DateTime newDateTime) {
        _bloc.add(SetSelectedToDateEvent(
            setSelectedToDate:
                DateFormat("dd/MM/yyyy").format(newDateTime)));
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
  void initState() {
    // TODO: implement initState
    _bloc.fromController.text =
        DateFormat("dd/MM/yyyy").format(_bloc.selectedDate);
    _bloc.toController.text =
        DateFormat("dd/MM/yyyy").format(_bloc.selectedDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            elevation: 0,
            backgroundColor: ThemeColor.clr_FFFFFF,
          ),
        ),
        body: SafeArea(
          child: HttpStreamHandler<DayOffBloc, BaseState>(
            bloc: _bloc,
            listener: (context, state) {},
            builder: (context, state) {
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: _buildDetailBody(context),
                    ),
                  ),
                  _buildButtonBottomWidget(context),
                  // _buildButtonBottomWidget(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildButtonBottomWidget(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 8,
      right: 8,
      child: GestureDetector(
        onTap: () {
          showDialogConfirm(context,
              icon: ic_like,
              title: S.of(context).translate("textMessageThank"),
              message: "");
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  height_50, height_zero, height_50, height_24),
              child: BaseButton(
                height: height_56,
                title: S.of(context).translate("submit"),
                style: TextStyleCommon.textButtonStyle(context),
                backgroundColor: ThemeColor.clr_CE6161,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDetailBody(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(25, 25, 25, 30),
        child: Column(
          children: [
            _buildAppBar(),
            SizedBox(height: height_15),
            _builDuration(),
            _buildTimer(),
            _buildRowTimer(),
            _buildReason(),
            _approve(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: ThemeColor.clr_CE6161,
            ),
          ),
          Spacer(),
          Text(
            S.of(context).translate("textDayOff"),
            style: TextStyle(
                color: ThemeColor.clr_CE6161,
                fontSize: fontSize_32,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          SizedBox(
            width: width_24,
          )
        ],
      ),
    );
  }

  Widget _builDuration() {
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
            Row(
              children: [
                SizedBox(
                  width: width_35,
                  child: Radio<Mode>(
                    activeColor: ThemeColor.clr_979797,
                    value: Mode.OneDay,
                    groupValue: _bloc.character,
                    onChanged: (Mode? value) {
                      _bloc.add(ClickCheckboxDurationEvent(
                          value: Mode.OneDay, isSelect: true));
                    },
                  ),
                ),
                Text(S.of(context).translate("oneDay"),style: TextStyleCommon.textHintStyle,)
              ],
            ),
            SizedBox(
              width: width_40,
            ),
            Row(
              children: [
                SizedBox(
                  width: width_35,
                  child: Radio<Mode>(
                    activeColor: ThemeColor.clr_979797,
                    value: Mode.ManyDay,
                    groupValue: _bloc.character,
                    onChanged: (Mode? value) {
                      _bloc.add(ClickCheckboxDurationEvent(
                          value: Mode.ManyDay, isSelect: false));
                    },
                  ),
                ),
                Text(S.of(context).translate("manyDay"),style: TextStyleCommon.textHintStyle)
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTimer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height_15),
        Text(
          S.of(context).translate("time"),
          style: TextStyleCommon.textTitleStyle,
        ),
        SizedBox(
          height: height_8,
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  _selectFromDate(context);
                },
                child: Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 30,
                        child: TextFormField(
                          readOnly: true,
                          controller: _bloc.fromController,
                          style: TextStyleCommon.textHintStyle,
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
            !_bloc.isDayOffOneDay
                ? Expanded(
              child: GestureDetector(
                onTap: (){
                  _selectToDate(context);
                },
                child: Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 30,
                        child: TextFormField(
                          readOnly: true,
                          controller: _bloc.toController,
                          style: TextStyleCommon.textHintStyle,
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
            ) : Expanded(child: SizedBox()),
          ],
        ),
      ],
    );
  }

  Widget _buildRowTimer() {
    return _bloc.isDayOffOneDay
        ? Container(
            margin: EdgeInsets.symmetric(vertical: height_20),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(
                        width: width_35,
                        child: Radio<TimeOff>(
                          activeColor: ThemeColor.clr_979797,
                          value: TimeOff.Allday,
                          groupValue: _bloc.timeOff,
                          onChanged: (TimeOff? value) {
                            _bloc.add(ClickCheckboxTimeOffEvent(value: value));
                          },
                        ),
                      ),
                      Text(S.of(context).translate("allDay"),style: TextStyleCommon.textHintStyle)
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(
                        width: width_35,
                        child: Radio<TimeOff>(
                          activeColor: ThemeColor.clr_979797,
                          value: TimeOff.Morning,
                          groupValue: _bloc.timeOff,
                          onChanged: (TimeOff? value) {
                            _bloc.add(ClickCheckboxTimeOffEvent(value: value));
                          },
                        ),
                      ),
                      Text(S.of(context).translate("morning"),style: TextStyleCommon.textHintStyle)
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(
                        width: width_35,
                        child: Radio<TimeOff>(
                          activeColor: ThemeColor.clr_979797,
                          value: TimeOff.Afternoon,
                          groupValue: _bloc.timeOff,
                          onChanged: (TimeOff? value) {
                            _bloc.add(ClickCheckboxTimeOffEvent(value: value));
                          },
                        ),
                      ),
                      Text(S.of(context).translate("afternoon"),style: TextStyleCommon.textHintStyle)
                    ],
                  ),
                )
              ],
            ),
          )
        : SizedBox(
            height: height_20,
          );
  }

  Widget _buildReason() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).translate("reason"), style: TextStyleCommon.textTitleStyle),
        DropdownButton<String>(
          value: _bloc.defaultReason,
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: ThemeColor.clr_979797,
          ),
          iconSize: 24,
          elevation: 16,
          isExpanded: true,
          style: const TextStyle(color: ThemeColor.clr_979797),
          underline: Container(
            height: 1,
            color: ThemeColor.clr_979797,
          ),
          onChanged: (String? newValue) {
              _bloc.add(SetReasonEvent(reason: newValue));
          },
          items: _bloc.reasons.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,style: TextStyleCommon.textHintStyle),
            );
          }).toList(),
        )
      ],
    );
  }

  Widget _approve() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: height_20,
          ),
          Text(
            S.of(context).translate("approver"),
            style: TextStyleCommon.textHintStyle
          ),
          SizedBox(
            height: height_15,
          ),
          Stack(
            children: [
              Container(
                height: 200,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Tags(
                    alignment: WrapAlignment.start,
                    itemCount: _bloc.managerMail.length,
                    // required
                    itemBuilder: (int index) {
                      return _bloc.managerMail[index].isChecked
                          ? ItemTags(
                              color: ThemeColor.clr_FEC0C1,
                              active: false,
                              pressEnabled: false,
                              textColor: ThemeColor.clr_2D3142,
                              // Each ItemTags must contain a Key. Keys allow Flutter to
                              // uniquely identify widgets.
                              key: Key(index.toString()),
                              index: index,
                              // required
                              title: _bloc.managerMail[index].name != ""
                                  ? _bloc.managerMail[index].name
                                  : _bloc.managerMail[index].mail!,
                              textStyle: TextStyle(
                                fontSize: fontSize_18,
                              ),
                              combine: ItemTagsCombine.withTextBefore,
                              //
                              removeButton: (index != 0 && index != 1)
                                  ? ItemTagsRemoveButton(
                                      icon: Icons.remove_circle_outline,
                                      color: ThemeColor.clr_CE6161,
                                      backgroundColor: ThemeColor.clr_FEC0C1,
                                      size: height_16,
                                      onRemoved: () {
                                        _bloc.add(RemovedMailEvent(
                                            index: index, isChecked: false));
                                        //required
                                        return true;
                                      },
                                    )
                                  : null,
                              // OR null,
                              onPressed: null,
                              onLongPressed: null,
                            )
                          : SizedBox();
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      _bloc.add(InitDataListMailEvent());
                      _showDialog(context);
                    },
                    icon: Icon(Icons.add_circle_outline_outlined),
                    color: ThemeColor.clr_D6D9E0,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _showDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius_10),
          ),
          content: HttpStreamHandler<DayOffBloc, BaseState>(
              bloc: _bloc,
              listener: (context, state) {},
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Container(
                    height: height_450,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height_20),
                          child: Text(
                            S.of(context).translate("textSelectMorePeople"),
                            style: TextStyle(
                                fontSize: fontSize_20,
                                color: ThemeColor.clr_4C5980,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          child: TextField(
                            cursorColor: ThemeColor.clr_D8D8D8,
                            controller: _bloc.searchController,
                            onChanged: ((value) {
                              _bloc.add(SearchMailEvent(value: value));
                            }),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: height_20,
                                  color: ThemeColor.clr_D8D8D8,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: ThemeColor.clr_D8D8D8),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemCount: _bloc.listResult.length,
                              itemBuilder: (BuildContext context, int index) {
                                return _buildItem(index, state);
                              }),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              _bloc.searchController.text = "";

                              Navigator.pop(context);
                            },
                            child: BaseButton(
                              height: height_56,
                              title: S.of(context).translate("submit"),
                              style: TextStyleCommon.textHintStyle,
                              backgroundColor: ThemeColor.clr_CE6161,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        );
      },
    );
  }

  Widget _buildItem(int index, BaseState state) {
    return (_bloc.listResult[index].mail
                .toString()
                .toLowerCase()
                .contains(_bloc.searchController.text.toLowerCase()) &&
            _bloc.listResult[index].canRemove)
        ? GestureDetector(
            onTap: () {
              _bloc.add(AddMailApproverEvent(index: index));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: height_4),
              padding: EdgeInsets.all(height_8),
              decoration: BoxDecoration(
                  color: _bloc.listResult[index].isChecked
                      ? ThemeColor.clr_FFEBEB
                      : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Text(_bloc.listResult[index].mail!),
                  Spacer(),
                  _bloc.listResult[index].isChecked
                      ? Icon(
                          Icons.check_circle_outline,
                          size: height_20,
                          color: ThemeColor.clr_FF9B90,
                        )
                      : SizedBox(),
                ],
              ),
            ),
          )
        : SizedBox();
  }
}
