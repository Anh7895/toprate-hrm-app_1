
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/checkin/checkin_bloc.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/loading_widget.dart';
import 'package:toprate_hrm/ui/mycheckin/event_data.dart';

import 'component/status_view.dart';

class CheckinScreen extends StatefulWidget {
  CheckinScreen({Key? key}) : super(key: key);

  @override
  State<CheckinScreen> createState() => _CheckinScreenState();
}

class _CheckinScreenState extends State<CheckinScreen> {

  CheckinBloc _bloc = Injector.resolve<CheckinBloc>();

  @override
  Widget build(BuildContext context) {
    return HttpStreamHandler<CheckinBloc, BaseState>(
      bloc: _bloc,
      listener: (context, state) {
        // if (state is FillInformationState) {
        //   Navigator.pop(context);
        // }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: AppBar(
              elevation: 0,
            ),
          ),
          body: SafeArea(
            child: Container(
              child: Stack(
                children: [
                  _buildMainBody(context),
                  Visibility(
                      visible: state is StartCallApiState,
                      child: LoadingWidget())
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    // _bloc.add(InitDataDateEvent());
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  Widget _buildMainBody(BuildContext context) {
    return Column(
      children: [
        _topNavigation(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    color: ThemeColor.clr_FFFFFF,

                  ),
                  // headerCalendar(context),
                  calendarTable(),
                  SizedBox(
                    height: 22,
                  ),

                  SizedBox(
                    height: height_20,
                  ),
                  ListStatusView(),
                  SizedBox(
                    height: height_50,
                  ),
                  BaseButton(
                    margin: EdgeInsets.only(left: height_62, right: height_62),
                    height: height_56,
                    title: TextConstants.textCheckin,
                    style: TextStyleCommon.textStyleWhiteNormalTitle,
                    backgroundColor: ThemeColor.clr_CE6161,

                  ),
                  SizedBox(
                    height: height_30,
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _topNavigation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height_28,
        ),
        Text(
          "My Checkin",
          style: TextStyle(
            color: ThemeColor.clr_CE6161,
            fontFamily: TextConstants.textRubik,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: fontSize_32,
          ),
        ),
        SizedBox(
          width: height_16,
        ),
      ],
    );
  }

  Container headerCalendar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ThemeColor.clr_FFFFFF,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(width_1),
              topRight: Radius.circular(width_1))),
      height: height_40,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    backgroundColor: ThemeColor.clr_FFFFFF,
                    context: context,
                    builder: (BuildContext context) {
                      return buildModalBottomSheet(context);
                    },
                  );
                },
                child: Container(
                  height: height_32,
                  child: Row(
                    children: [
                      Text(
                        'Tháng ${_bloc.stringData}',
                        style: TextStyleCommon.textStyleColor136849Size14,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: height_11) ,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: ThemeColor.clr_136849,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container calendarTable() {
    return Container(
      padding: EdgeInsets.all(height_32),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          TableCalendar<Event>(
            headerVisible: true,
            locale: "en",
            focusedDay: _bloc.dateToday,
            firstDay: DateTime(1990),
            lastDay: DateTime(2050),
            calendarFormat: CalendarFormat.month,
            isEventday: true,
            availableGestures: AvailableGestures.none,
            pageJumpingEnabled: false,
            pageAnimationEnabled: false,
            // styleForEvents: (day) => getColorForEvent(day),
            // eventLoader: _bloc.getEventsForDay,
            onCalendarCreated: (controller) {},
            calendarStyle: CalendarStyle(
              outsideDaysVisible: true,
              markersAlignment: AlignmentDirectional.center,
              markerDecoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Container(
              alignment: Alignment.bottomRight,
              child: Text(
                "TODAY",
                style: TextStyle(
                  color: ThemeColor.clr_6200E8,
                  fontFamily: TextConstants.textNotoSans,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: fontSize_14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildModalBottomSheet(BuildContext context) {
    return Container(
      height: height_344,
      margin: EdgeInsets.only(left: width_8, right: width_8, bottom: height_24),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height_8),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: height_9),
              width: width_68,
              height: height_5,
              decoration: BoxDecoration(
                  color: ThemeColor.clr_C7C7C7,
                  borderRadius: BorderRadius.circular(height_8)),
            ),
            _titleBottomSheet(context),
            _listViewSelectAnIndustrialCluster(context),
          ],
        ),
      ),
    );
  }

  Widget _titleBottomSheet(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: width_14, right: width_14, top: height_25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            TextConstants.textSelectTimeKeepingMonth,
            style: TextStyle(
              color: ThemeColor.clr_323232,
              fontFamily: TextConstants.textNotoSans,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: fontSize_14,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              TextConstants.textBack,
              style: TextStyle(
                color: ThemeColor.clr_136849,
                fontFamily: TextConstants.fontInter,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: fontSize_14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _listViewSelectAnIndustrialCluster(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: _bloc.listDataDate.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                _bloc.add(FillInformationEvent(
                    date: _bloc
                        .listDataDate[index].selectAnIndustrialRecruitment));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: height_36, left: width_14, right: width_14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: height_10),
                      child: Text(
                        "${_bloc.listDataDate[index].selectAnIndustrialRecruitment}",
                        style: TextStyle(
                          color: ThemeColor.clr_323232,
                          fontFamily: TextConstants.textNotoSans,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontSize: fontSize_14,
                        ),
                      ),
                    ),
                    Container(
                      color: ThemeColor.clr_DCE5DD,
                      width: MediaQuery.of(context).size.width,
                      height: height_1,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

int getHashCode(DateTime key) {
  return key.day + key.month + key.year;
}