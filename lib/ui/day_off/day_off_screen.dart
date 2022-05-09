import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/day_off/day_off_bloc.dart';
import 'package:toprate_hrm/common/dialog/alert_dialog.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/ui/day_off/component/app_bar_item.dart';
import 'package:toprate_hrm/ui/day_off/component/approve_item.dart';
import 'package:toprate_hrm/ui/day_off/component/reason_item.dart';
import 'package:toprate_hrm/ui/day_off/component/row_timer_item.dart';
import 'package:toprate_hrm/ui/day_off/component/timer_item.dart';

import '../../common/multi_language/internationalization.dart';
import 'component/duration_item.dart';

class DayOffScreen extends StatefulWidget {
  const DayOffScreen({Key? key}) : super(key: key);

  @override
  State<DayOffScreen> createState() => _DayOffScreenState();
}

class _DayOffScreenState extends State<DayOffScreen> {
  DayOffBloc _bloc = Injector.resolve<DayOffBloc>();

  @override
  void initState() {
    // TODO: implement initState
    _bloc.fromController.text =
        DateFormat("dd/MM/yyyy").format(_bloc.selectedDate);
    _bloc.toController.text =
        DateFormat("dd/MM/yyyy").format(_bloc.selectedDate);
    _bloc.add(GetListEmailApproversEvent());
    _bloc.add(GetReasonEvent());
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
            listener: (context, state) {
              if (state is showAlertBottomSheetDialogState) {
                showAlert(context,
                    S.of(context).translate("success"),
                    S.of(context).translate("submitDayOffSuccess"),
                    icon: ic_like);

              }
            },
            builder: (context, state) {
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: _buildDetailBody(context),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () {
                        _bloc.add(SubmitDayOffEvent());
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
                  )
                  // _buildButtonBottomWidget(),
                ],
              );
            },
          ),
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
            ItemAppBar(
                text: S.of(context).translate("textDayOff"),
                textStyle: TextStyleCommon.textCustomNormalStyle(context,
                    color: ThemeColor.clr_CE6161,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize_32),
                colorIcon: ThemeColor.clr_CE6161),
            SizedBox(height: height_15),
            ItemDuration(dayOffBloc: _bloc),
            ItemTimer(
              dayOffBloc: _bloc,
              text: S.of(context).translate("time"),
              textStyle: TextStyleCommon.textTitleStyle,
              context: context,
              textStyleHint: TextStyleCommon.textHintStyle,
            ),
            ItemRowTimer(dayOffBloc: _bloc),
            ItemReason(dayOffBloc: _bloc),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height_20,
                ),
                Text(S.of(context).translate("textContent"),
                    style: TextStyleCommon.textTitleStyle),
                SizedBox(
                  height: height_12,
                ),
                TextField(
                  controller: _bloc.textDescriptionController,
                  minLines: 5,
                  maxLength: 255,
                  maxLines: null,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ThemeColor.clr_DADADA,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeColor.clr_DADADA),
                    ),
                    hintText: S.of(context).translate("textDescription"),
                    hintStyle: TextStyleCommon.textHintStyle,
                  ),
                  focusNode: _bloc.focusDescription,
                ),
              ],
            ),
            ItemApprove(dayOffBloc: _bloc),
          ],
        ),
      ),
    );
  }
}
