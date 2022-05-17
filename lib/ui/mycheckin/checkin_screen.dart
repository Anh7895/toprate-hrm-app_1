
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/checkin/checkin_bloc.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/utils/extensions.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/loading_widget.dart';
import 'package:toprate_hrm/ui/mycheckin/event_data.dart';

import '../../common/multi_language/internationalization.dart';
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
    _bloc.add(InitDataEvent());
    _bloc.add(GetDataTimeKeepingEvent());
    _bloc.add(GetSettingEvent());

    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  Widget _buildMainBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height_25),
      child: Column(
        children: [
          SizedBox(height: height_15),
          _topNavigation(),
          SizedBox(height: height_15),
          Expanded(
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
                  ListStatusViewNew(),
                  SizedBox(
                    height: height_50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.dailyCheckInScreen,
                          arguments: _bloc.selectedDay);
                    },
                    child: BaseButton(
                      margin: EdgeInsets.only(
                          left: height_62, right: height_62),
                      height: height_56,
                      title: TextConstants.textCheckin,
                      style: TextStyleCommon.textButtonStyle(context),
                      backgroundColor: ThemeColor.clr_CE6161,

                    ),
                  ),
                  SizedBox(
                    height: height_30,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _topNavigation() {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: width_20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteName.dashboard, (route) => true);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: ThemeColor.clr_CE6161,
            ),
          ),
          Spacer(),
          Text(
            S.of(context).translate("textMyCheckin"),
            style: TextStyleCommon.textAppBarStyle,
          ),
          Spacer(),
          SizedBox(
            width: width_24,
          )
        ],
      ),
    );
  }

  Widget ListStatusViewNew() {
    return Container(
      height: height_200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 4.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
        itemCount: _bloc.listSetting.length,
        itemBuilder:  (BuildContext context, int index) {
          return Container(
            height: 30,
            child: Row(
              children: <Widget>[
                Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: Color(int.parse(
                          "0xFF" + _bloc.listSetting[index].backgroundColor!)) ,
                      borderRadius: BorderRadius.circular(28),
                    )
                ),
                SizedBox(
                  width: width_11,
                ),
                Text(
                  _bloc.listSetting[index].name!,
                  style:
                  TextStyle(fontSize: fontSize_14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        }
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
            focusedDay: _bloc.selectedDay,
            firstDay: DateTime(1990),
            lastDay: DateTime(2050),
            calendarFormat: _bloc.format,
            onFormatChanged: (CalendarFormat _format) {
              _bloc.add(FormatChangeEvent(_format));
            },
            onDaySelected: (DateTime selectDay, DateTime focusDay) {
              // if (selectDay.toString().substring(0, 10) ==
              //     DateTime.now().toString().substring(0, 10)){
                _bloc.add(SelectDayEvent(selectDay, focusDay));
              // }else
              //   if (selectDay.compareTo(DateTime.now()) < 0) {
              //   for (int i = 0; i < _bloc.listCheckin.length; i++) {
              //     if (selectDay.compareTo(_bloc.listCheckin[i].notcheckinDay) ==
              //         0) {
              //       if (_bloc.listCheckin[i].title == "HOLIDAY" ||
              //           _bloc.listCheckin[i].title == "DAYOFF")
              //         _bloc.add(CantSeclectThisDayEvent());
              //       else
              //         _bloc.add(SelectDayEvent(selectDay, focusDay));
              //     }
              //   }
              // }
              // else {
              //   _bloc.add(CantSeclectDayEvent());
              // }
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(_bloc.selectedDay, date);
            },

            isEventday: true,
            availableGestures: AvailableGestures.none,
            pageJumpingEnabled: false,
            pageAnimationEnabled: false,

            calendarBuilders: CalendarBuilders(
                markerBuilder: (BuildContext context, date, events) {
                  String dateFormat = date.convertDateTimeToString("dd-MM-yyyy 00:00:00");
                  DateTime tempDate = dateFormat.convertStringToDateTime("dd-MM-yyyy 00:00:00");
                  return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _bloc.listCheckin.length,
                      itemBuilder: (context, index) {
                        if (_bloc.listCheckin[index].title == "CHECKIN" && tempDate.compareTo(
                                _bloc.listCheckin[index].notcheckinDay) == 0) {
                          return Center(
                              child: Container(
                                width: width_35,
                                height: height_35,
                                decoration: BoxDecoration(
                                    color: ThemeColor.clr_FF9B90,
                                    shape: BoxShape.circle
                                ),
                                child: Center(child: Text(date.day.toString(),
                                    style: TextStyle(
                                        color: ThemeColor.clr_FFFFFF))),
                              ));
                        }
                        else
                        if (_bloc.listCheckin[index].title == "NOTCHECKIN" &&
                            tempDate.compareTo(_bloc.listCheckin[index].notcheckinDay) == 0) {
                          return Center(
                              child: Container(
                                width: width_35,
                                height: height_35,
                                decoration: BoxDecoration(
                                    color: ThemeColor.clr_4C5980,
                                    border: Border.all(
                                        color: ThemeColor.clr_000000),
                                    shape: BoxShape.circle
                                ),
                                child: Center(child: Text(date.day.toString(),
                                    style: TextStyle(
                                        color: ThemeColor.clr_000000))),
                              ));
                        }
                        else if (_bloc.listCheckin[index].title == "DAYOFF" &&
                            tempDate.compareTo(_bloc.listCheckin[index].notcheckinDay) == 0) {
                          return Center(
                              child: Container(
                                width: width_35,
                                height: height_35,
                                decoration: BoxDecoration(
                                    color: ThemeColor.clr_979797,
                                    shape: BoxShape.circle
                                ),
                                child: Center(child: Text(date.day.toString(),
                                    style: TextStyle(
                                        color: ThemeColor.clr_FFFFFF))),
                              ));
                        }
                        else if (_bloc.listCheckin[index].title == "HOLIDAY" &&
                            tempDate.compareTo(_bloc.listCheckin[index].notcheckinDay) == 0) {
                          return Center(
                              child: Container(
                                width: width_35,
                                height: height_35,
                                decoration: BoxDecoration(
                                    color: ThemeColor.clr_F30000,
                                    shape: BoxShape.circle
                                ),
                                child: Center(child: Text(date.day.toString(),
                                  style: TextStyle(
                                    color: ThemeColor.clr_FFFFFF,),
                                  textAlign: TextAlign.center,)),
                              ));
                        }
                        else if (_bloc.listCheckin[index].title=="HALFDAYOFF" &&
                            tempDate.compareTo(_bloc.listCheckin[index].notcheckinDay) == 0){
                          return Center(
                            child:
                            Container(
                              width: width_35,
                              height: height_35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: ThemeColor.clr_000000),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  stops: [0, 0.5, 0.5],
                                  colors: [
                                    ThemeColor.clr_F4F6FA,
                                    ThemeColor.clr_F4F6FA,
                                    ThemeColor.clr_8F8F8F
                                  ],
                                ),
                              ),

                              child: Center(child: Text(date.day.toString())),
                            ),);
                        }
                        else if (_bloc.listCheckin[index].title == "HAFTDAYOFFCHECKIN" &&
                            tempDate.compareTo(_bloc.listCheckin[index].notcheckinDay) == 0){
                          return Center(
                            child:
                            Container(
                              width: width_20,
                              height: height_20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  stops: [0, 0.5, 0.5],
                                  colors: [
                                    ThemeColor.clr_FF9B90,
                                    ThemeColor.clr_FF9B90,
                                    ThemeColor.clr_8F8F8F
                                  ],
                                ),
                              ),

                              child: Center(child: Text(date.day.toString())),
                            ),);
                        }
                          return Center(
                              child: Container(
                              ));
                      }

                  );
                },
                dowBuilder: (context, day) {
                  if (day.weekday == DateTime.saturday) {
                    final text = DateFormat.E().format(day);
                    return Center(
                      child: Text(
                        text, style: TextStyle(color: ThemeColor.clr_CE6161),),
                    );
                  }
                  if (day.weekday == DateTime.sunday) {
                    final text = DateFormat.E().format(day);
                    return Center(
                      child: Text(
                        text, style: TextStyle(color: ThemeColor.clr_CE6161),),
                    );
                  }
                }
            ),

            // styleForEvents: (day) => getColorForEvent(day),
            // eventLoader: _bloc.getEventsForDay,
            onCalendarCreated: (controller) {},
            calendarStyle: CalendarStyle(
              weekendTextStyle: TextStyle(color: ThemeColor.clr_CE6161),
              outsideDaysVisible: true,
              isTodayHighlighted: true,
              markersAlignment: AlignmentDirectional.center,
              selectedDecoration: BoxDecoration(
                color: ThemeColor.clr_CE6161,
                shape: BoxShape.circle,
              ),
              markerDecoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          // GestureDetector(
          //   onTap: null ,
          //   child: Container(
          //     alignment: Alignment.bottomRight,
          //     child: Text(
          //       "TODAY",
          //       style: TextStyle(
          //         color: ThemeColor.clr_6200E8,
          //         fontFamily: TextConstants.textNotoSans,
          //         fontWeight: FontWeight.w500,
          //         fontStyle: FontStyle.normal,
          //         fontSize: fontSize_14,
          //       ),
          //     ),
          //   ),
          // ),
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
          ],
        ),
      ),
    );
  }

}



int getHashCode(DateTime key) {
  return key.day + key.month + key.year;
}
