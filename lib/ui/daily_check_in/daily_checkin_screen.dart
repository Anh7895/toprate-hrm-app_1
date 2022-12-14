import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/daily_checkin/daily_check_in_bloc.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/dialog/confirm_dialog.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/images/local_image_widget.dart';
import 'package:toprate_hrm/common/widgets/images/svg_image_widget.dart';
import 'package:toprate_hrm/common/widgets/images/web_image_widget.dart';
import 'package:toprate_hrm/common/widgets/loading_widget.dart';

import '../../common/multi_language/internationalization.dart';

class DailyCheckInScreen extends StatefulWidget {
  final data;
  const DailyCheckInScreen({Key? key, this.data}) : super(key: key);

  @override
  State<DailyCheckInScreen> createState() => _DailyCheckInScreenState();
}

class _DailyCheckInScreenState extends State<DailyCheckInScreen> {
  DailyCheckInBloc _bloc = Injector.resolve<DailyCheckInBloc>();


  @override
  void initState() {
    // TODO: implement initState
    if(widget.data != null){
      _bloc.add(InitDateEvent(widget.data));
    }else{
      _bloc.add(InitDataEvent());
    }
    if(widget.data != null){
      _bloc.add(GetProjectByDateEvent(date: DateFormat("dd-MM-yyyy").format(widget.data)));
    } else{
      _bloc.add(GetProjectByDateEvent(date: _bloc.stringDayNow));
    }
    _bloc.add(GetAllProjectEvent());
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
          child: HttpStreamHandler<DailyCheckInBloc, BaseState>(
            bloc: _bloc,
            listener: (context, state) {
              if(state is CheckBackState){
                if(_bloc.count!=0)
                  showConfirmDialog(context,S.of(context).translate("changeDateDialog") , "",
                      onPressed: (){
                        _bloc.add(BackDayEvent());
                        Navigator.pop(context);
                      }, onPressed2: (){
                      _bloc.count=0;
                      Navigator.pop(context);
                      });
                else  {
                  _bloc.add(BackDayEvent());
                }
              }
              if(state is CheckChooseState){
                if(_bloc.count!=0)
                  showConfirmDialog(context,S.of(context).translate("changeDateDialog") , "",
                      onPressed: (){
                        _bloc.add(SelectDayEvent(_bloc.selectDay, _bloc.focusDay));
                        _bloc.add(InitDataEvent());
                        Navigator.pop(context);
                      }, onPressed2: (){
                        _bloc.count=0;
                        Navigator.pop(context);
                      });
                else {
                  _bloc.add(SelectDayEvent(_bloc.selectDay, _bloc.focusDay));
                  _bloc.add(InitDataEvent());
                }
              }
              if(state is CheckNextState){
                if(_bloc.count!=0)
                  showConfirmDialog(context,S.of(context).translate("changeDateDialog") , "",
                      onPressed: (){
                        _bloc.add(NextDayEvent());
                        Navigator.pop(context);
                      }, onPressed2: (){
                  _bloc.count=0;
                  Navigator.pop(context);
                });
                else   _bloc.add(NextDayEvent());
              }
              if(state is NextDayState) _bloc.count=0;
              if(state is BackDayState) _bloc.count=0;
              if (state is showAlertBottomSheetDialogState) {
                showAlert(context,
                    S.of(context).translate("textMessageThank"),
                    "",
                    icon: ic_like,
                    dismissible: false,
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, RouteName.checkinScreen);
                    },
                    nameButton: "close");

              }
              if (state is SubmitFailState) {
                showAlert(context,
                    S.of(context).translate("fail"),
                    S.of(context).translate("textSystemIsBusyPleaseTryAgainLater"),
                    icon: ic_error);
              }
            },
            builder: (context, state) {
              return Stack(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height,
                      child: SingleChildScrollView(
                          child: _buildDetailBody(context))),
                  _buildButtonBottomWidget(context),
                  Visibility(
                    visible: state is StartCallApiState,
                    child: LoadingWidget(),
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

  Widget _buildButtonBottomWidget(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 8,
      right: 8,
      child: GestureDetector(
        onTap: () {
            _showDialogConfirm(context);
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
            _buildCalendar(),
            SizedBox(height: height_24),
            _buildListDaily(),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24,
                color: ThemeColor.clr_CE6161,
              ),
              onPressed: () {
                _bloc.add(CheckBackEvent());
              }),
          GestureDetector(
            onTap: (){
              _showDialogCalendar(context);
            },
            child: Text(
              _bloc.time,
              style: TextStyleCommon.textAppBarStyle,
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 24,
                color: ThemeColor.clr_CE6161,
              ),
              onPressed: () {
                _bloc.add(CheckNextEvent());
              })
        ],
      ),
    );
  }

  Widget _buildListDaily() {
    return Container(
      margin: EdgeInsets.only(bottom: height_64),
      child:
          _bloc.listProjectByDate.length > 0 || _bloc.listProjectData.length > 0
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _bloc.listProjectByDate.length > 0
                      ? _bloc.listProjectByDate.length
                      : _bloc.listProjectData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildListSelected(index);
                  })
              : SizedBox(),
    );
  }

  Widget _buildListSelected(int index) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
          _showMyDialog(context, index);
      },
      child: Container(
        width: width_336,
        height: height_56,
        margin: EdgeInsets.only(top: height_12),
        padding: EdgeInsets.symmetric(horizontal: width_20),
        decoration: BoxDecoration(
            color: _bloc.listProjectByDate.length > 0
                ? Color(int.parse(
                    "0xFF" + _bloc.listProjectByDate[index].background!))
                : _bloc.listProjectData[index].stringNameSelectProject !=
                            null &&
                        _bloc.listProjectData[index].stringNameSelectProject !=
                            _bloc.listProjectData[index].stringNameDefault
                    ? Color(
                        int.parse("0XFF" + _bloc.listProjectData[index].color!))
                    : ThemeColor.clr_FFFFFF,
            borderRadius: BorderRadius.all(Radius.circular(radius_16)),
            border: Border.all(color: ThemeColor.clr_D6D9E0, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: _bloc.listProjectByDate.length > 0 &&
                      _bloc.listProjectByDate[index].avatarUrl != null ||
                  _bloc.listProjectData != [] &&
                      _bloc.listProjectData[index].stringNameSelectProject !=
                          null &&
                      _bloc.listProjectData[index].stringNameSelectProject !=
                          _bloc.listProjectData[index].stringNameDefault,
              child: WebImageWidget(
                urlImage: _bloc.listProjectByDate.length > 0
                    ? _bloc.listProjectByDate[index].avatarUrl
                    : _bloc.listProjectData[index].avatar,
                width: width_35,
                height: width_35,
              ),
            ),
            SizedBox(width: width_10,),
            Expanded(
              child: Center(
                child: Text(
                  _bloc.listProjectByDate.length > 0
                      ? _bloc.listProjectByDate[index].name!
                      : _bloc.listProjectData[index].stringNameSelectProject == null
                          ? _bloc.listProjectData[index].stringNameDefault!
                          : _bloc.listProjectData[index].stringNameSelectProject!,
                  style: TextStyle(
                      color: _bloc.listProjectByDate.length > 0 &&
                              _bloc.listProjectByDate[index].name != null
                          ? ThemeColor.clr_FFFFFF
                          : _bloc.listProjectData != []
                              ? ThemeColor.clr_D6D9E0
                              : _bloc.listProjectData[index]
                                          .stringNameSelectProject !=
                                      _bloc.listProjectData[index].stringNameDefault
                                  ? ThemeColor.clr_FFFFFF
                                  : ThemeColor.clr_D6D9E0,
                      overflow: TextOverflow.ellipsis,
                      fontSize: fontSize_16,
                      fontFamily: TextConstants.fontMontserrat,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(width: width_10,),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                  if (_bloc.listProjectData != [] &&
                      _bloc.listProjectData[index].projectId !=
                          null) {
                    _bloc.add(RemoveProjectEvent(indexSelect: index));
                  } else {
                    _showMyDialog(context, index);
                  }

                  if(_bloc.listProjectByDate != [] && _bloc.listProjectByDate[index].id != null){
                    _bloc.add(RemoveProjectEvent(indexSelect: index));
                  } else{
                    _showMyDialog(context, index);
                  }
              },
              child: LocalImageWidget(
                url: _bloc.listProjectByDate.length > 0
                    ? ic_remove_project_png
                    : _bloc.listProjectData != [] &&
                            _bloc.listProjectData[index]
                                    .stringNameSelectProject !=
                                null &&
                            _bloc.listProjectData[index]
                                    .stringNameSelectProject !=
                                _bloc.listProjectData[index].stringNameDefault
                        ? ic_remove_project_png
                        : ic_add_project_png,
                width: width_24,
                height: width_24,
              ),
            )
          ],
        ),
      ),
    );
  }

  _showMyDialog(BuildContext context, int indexSettingBloc) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return HttpStreamHandler<DailyCheckInBloc, BaseState>(
            bloc: _bloc,
            listener: (context, state) {},
            builder: (context, setState) {
              return Dialog(
                insetPadding: EdgeInsets.symmetric(horizontal: width_20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius_16),
                ),
                child: Container(
                  height: height_344,
                  width: width_336,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height_20),
                        child: Text(
                          S.of(context).translate("textSelectProject"),
                          style: TextStyle(
                              fontSize: fontSize_20,
                              color: ThemeColor.clr_4C5980,
                              fontFamily: TextConstants.fontMontserrat,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemCount: _bloc.listProjectHistory.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    _bloc.add(
                                        SelectProjectEvent(indexSelect: index));
                                  },
                                  child: _buildItemListTask(index));
                            }),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: height_8),
                        child: GestureDetector(
                          onTap: () {
                            if (_bloc.selectedIndex == _bloc.intSelectData) {
                              _bloc.add(FillNameProjectEvent(
                                  index: indexSettingBloc,
                                  nameProject: _bloc
                                      .listProjectHistory[_bloc.intSelectData!]
                                      .name,
                                  projectId: _bloc
                                      .listProjectHistory[_bloc.intSelectData!]
                                      .id,
                                  avatar: _bloc
                                      .listProjectHistory[_bloc.intSelectData!]
                                      .avatarUrl,
                                  color: _bloc
                                      .listProjectHistory[_bloc.intSelectData!]
                                      .background));
                              Navigator.pop(context);
                            }
                          },
                          child: BaseButton(
                            height: height_45,
                            width: width_200,
                            title: TextConstants.textOk,
                            style: TextStyleCommon.textButtonStyle(context),
                            backgroundColor: ThemeColor.clr_CE6161,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }

  _showDialogCalendar(BuildContext context) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: width_20 ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius_16),
            ),
            content: HttpStreamHandler<DailyCheckInBloc, BaseState>(
            bloc: _bloc,
            listener: (context, state) {},
            builder: (context, setState) {
                return Container(
                  height: height_550,
                  width: MediaQuery.of(context).size.width,
                  child: TableCalendar(
                    headerVisible: true,
                    locale: "en",
                    focusedDay: _bloc.tempDate,
                    firstDay: DateTime(1990),
                    lastDay: DateTime(2050),
                    calendarFormat: _bloc.format,
                    onFormatChanged: (CalendarFormat _format){
                        _bloc.add(FormatChangeEvent(_format));
                    },
                    onDaySelected: (DateTime selectDay, DateTime focusDay){
                      if(selectDay.compareTo(DateTime.now()) <= 0){
                        _bloc.add(CheckChooseEvent(selectDay, focusDay));

                        Navigator.pop(context);
                      }else {
                        _bloc.add(CantSeclectDayEvent());
                        Navigator.pop(context);
                      }
                    },
                    selectedDayPredicate: (DateTime date){
                      return isSameDay(_bloc.selectedDay, date);
                    },
                    isEventday: true,
                    availableGestures: AvailableGestures.none,
                    pageJumpingEnabled: false,
                    pageAnimationEnabled: false,
                    calendarBuilders: CalendarBuilders(
                        dowBuilder: (context, day) {
                          if(day.weekday == DateTime.saturday){
                            final text = DateFormat.E().format(day);
                            return Center(
                              child: Text(text,style: TextStyle(color: ThemeColor.clr_CE6161),),
                            );
                          }
                          if(day.weekday == DateTime.sunday){
                            final text = DateFormat.E().format(day);
                            return Center(
                              child: Text(text,style: TextStyle(color: ThemeColor.clr_CE6161),),
                            );
                          }
                        }
                    ),
                    onCalendarCreated: (controller) {},
                    calendarStyle: CalendarStyle(
                      weekendTextStyle: TextStyle(color: ThemeColor.clr_CE6161),
                      isTodayHighlighted: true,
                      outsideDaysVisible: true,
                      markersAlignment: AlignmentDirectional.center,
                      markerDecoration: BoxDecoration(
                          color: Colors.red, borderRadius: BorderRadius.circular(8)),
                      selectedDecoration: BoxDecoration(
                        color: ThemeColor.clr_CE6161,
                        shape: BoxShape.circle,
                      ),
                      selectedTextStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                );
            }),
        );
      },
    );
  }

  _showDialogConfirm(BuildContext context) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return HttpStreamHandler<DailyCheckInBloc, BaseState>(
            bloc: _bloc,
            listener: (context, state) {},
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius_16),
                ),
                child: Container(
                  height: height_200,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Center(
                            child: Text(
                            S.of(context).translate("messageSendInfo"),
                             style: TextStyleCommon.textHeaderDialogStyle(context),
                            textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: BaseButton(
                                  height: height_56,
                                  title: S.of(context).translate("textCancel"),
                                  style:
                                  TextStyleCommon.textButtonStyle(context),
                                  backgroundColor: ThemeColor.clr_4C5980,
                                ),
                              ),
                            ),
                            Expanded(
                              child: BaseButton(
                                height: height_56,
                                title: S.of(context).translate("textContinue"),
                                style:
                                    TextStyleCommon.textButtonStyle(context),
                                backgroundColor: ThemeColor.clr_CE6161,
                                onPressed: () {
                                  _bloc.add(ClickSubmitEvent());
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }

  Widget _buildItemListTask(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width_8, vertical: height_4),
      height: height_45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius_20)),
          color: _bloc.selectedIndex == index
              ? Color(int.parse(
                  "0xFF" + _bloc.listProjectHistory[index].background!))
              : ThemeColor.clr_FFEBEB),
      child: Container(
        margin: EdgeInsets.only(left: width_20),
        child: Row(
          children: [
            SVGImageWidget(
              url: _bloc.selectedIndex == index
                  ? ic_select_true
                  : ic_select_false,
              width: width_24,
              height: width_24,
            ),
            SizedBox(width: width_10,),
            Expanded(
              child: Text(
                _bloc.listProjectHistory[index].name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: _bloc.selectedIndex == index
                        ? ThemeColor.clr_FFFFFF
                        : ThemeColor.clr_4C5980,
                    fontSize: fontSize_16,
                    fontFamily: TextConstants.fontMontserrat,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
