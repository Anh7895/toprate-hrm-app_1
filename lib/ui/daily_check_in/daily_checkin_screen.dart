import 'package:flutter/material.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/daily_checkin/daily_check_in_bloc.dart';
import 'package:toprate_hrm/common/dialog/bottom_sheet_dialog_utils_new.dart';
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

class DailyCheckInScreen extends StatefulWidget {
  const DailyCheckInScreen({Key? key}) : super(key: key);

  @override
  State<DailyCheckInScreen> createState() => _DailyCheckInScreenState();
}

class _DailyCheckInScreenState extends State<DailyCheckInScreen>
    with AutomaticKeepAliveClientMixin {
  DailyCheckInBloc _bloc = Injector.resolve<DailyCheckInBloc>();

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    _bloc.add(InitDataEvent());
    _bloc.add(GetAllSettingBlockEvent());
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
              if (state is showAlertBottomSheetDialogState) {
                showAlertBottomSheetDialogNew(context,
                    isDismissible: true,
                    icon: ic_like,
                    message:
                        "Get a good working day, \nthank you for your effort!");
              }
            },
            builder: (context, state) {
              return Stack(
                children: [
                  _buildDetailBody(context),
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
                  height_60, height_zero, height_60, height_24),
              child: BaseButton(
                height: height_56,
                title: TextConstants.textSubmit,
                style: TextStyleCommon.textStyleWhiteNormalTitle,
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
        padding: EdgeInsets.symmetric(horizontal: height_25),
        child: Column(
          children: [
            SizedBox(height: height_24),
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
                _bloc.add(BackDayEvent());
              }),
          Text(
            _bloc.time,
            style: TextStyle(
                color: ThemeColor.clr_CE6161,
                fontFamily: TextConstants.fontRubik,
                fontSize: fontSize_32,
                fontWeight: FontWeight.w500),
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 24,
                color: ThemeColor.clr_CE6161,
              ),
              onPressed: () {
                _bloc.add(NextDayEvent());
              })
        ],
      ),
    );
  }

  Widget _buildListDaily() {
    return Container(
      margin: EdgeInsets.only(bottom: height_64),
      child: _bloc.listProjectByDate.length > 0 || _bloc.listProjectData.length > 0
          ? ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: _bloc.listProjectByDate.length > 0 ? _bloc.listProjectByDate.length : _bloc.listProjectData.length,
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
            color:
                _bloc.listProjectByDate.length > 0 && _bloc.listProjectByDate[index].project!.name != null ?
                Color(int.parse("0xFF" + _bloc.listProjectByDate[index].project!.color! )) :
                _bloc.listProjectData[index].stringNameSelectProject != null &&
                        _bloc.listProjectData[index].stringNameSelectProject !=
                            _bloc.listProjectData[index].stringNameDefault
                    ? Color(int.parse("0XFF" + _bloc.listProjectData[index].color!))
                    : ThemeColor.clr_FFFFFF,
            borderRadius: BorderRadius.all(Radius.circular(radius_16)),
            border: Border.all(color: ThemeColor.clr_D6D9E0, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: _bloc.listProjectData[index].stringNameSelectProject !=
                      null &&
                  _bloc.listProjectData[index].stringNameSelectProject !=
                      _bloc.listProjectData[index].stringNameDefault,
              child: WebImageWidget(
                urlImage: _bloc.listProjectByDate.length > 0 && _bloc.listProjectByDate[index].project!.avatar != null ?
                _bloc.listProjectByDate[index].project!.avatar! :
                _bloc.listProjectData[index].avatar,
                width: width_24,
                height: width_24,
              ),
            ),
            Text(
              _bloc.listProjectByDate.length > 0 && _bloc.listProjectByDate[index].project!.name != null ?
              _bloc.listProjectByDate[index].project!.name! :
              _bloc.listProjectData[index].stringNameSelectProject == null
                  ? _bloc.listProjectData[index].stringNameDefault!
                  : _bloc.listProjectData[index].stringNameSelectProject!,
              style: TextStyle(color:
              _bloc.listProjectByDate.length > 0 && _bloc.listProjectByDate[index].project!.name != null ?
                  ThemeColor.clr_FFFFFF :
                  _bloc.listProjectData[index].stringNameSelectProject !=
                              null ||
                          _bloc.listProjectData[index]
                                  .stringNameSelectProject !=
                              _bloc.listProjectData[index].stringNameDefault
                      ? ThemeColor.clr_D6D9E0
                      : ThemeColor.clr_FFFFFF,
                  fontSize: fontSize_16,
                  fontFamily: TextConstants.fontRubik,
                  fontWeight: FontWeight.normal),
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                if (_bloc.listProjectData[index].stringNameSelectProject !=
                    null) {
                  _bloc.add(RemoveProjectEvent(indexSelect: index));
                } else {
                  _showMyDialog(context, index);
                }
              },
              child: LocalImageWidget(
                url:
                _bloc.listProjectByDate.length > 0 && _bloc.listProjectByDate[index].project!.name != null ?
                ic_remove_project_png :
                _bloc.listProjectData[index].stringNameSelectProject !=
                            null &&
                        _bloc.listProjectData[index].stringNameSelectProject !=
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
                          "Select 01 subject",
                          style: TextStyle(
                              fontSize: fontSize_20,
                              color: ThemeColor.clr_4C5980,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemCount: _bloc.listProject.length,
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
                                      .listProject[_bloc.intSelectData!].name,
                                  projectId: _bloc
                                      .listProject[_bloc.intSelectData!].id,
                                  avatar: _bloc
                                      .listProject[_bloc.intSelectData!].avatar,
                                  color: _bloc.listProject[_bloc.intSelectData!]
                                      .color));
                              Navigator.pop(context);
                            }
                          },
                          child: BaseButton(
                            height: height_45,
                            width: width_200,
                            title: TextConstants.textOk,
                            style: TextStyleCommon.textStyleWhiteNormalTitle,
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
                  height: height_344,
                  width: width_336,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: height_15),
                          child: Center(
                            child: Text(
                              "Are you sure you want to \nsend check-in information?",
                              style: TextStyle(
                                  fontSize: fontSize_18,
                                  color: ThemeColor.clr_4C5980,
                                  fontWeight: FontWeight.w500),
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
                                  title: TextConstants.textCancel,
                                  style:
                                  TextStyleCommon.textStyleWhiteNormalTitle,
                                  backgroundColor: ThemeColor.clr_4C5980,
                                ),
                              ),
                            ),
                            Expanded(
                              child: BaseButton(
                                height: height_56,
                                title: TextConstants.textContinue,
                                style:
                                    TextStyleCommon.textStyleWhiteNormalTitle,
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
                      SizedBox(
                        height: 20,
                      )
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
          color: ThemeColor.clr_FFEBEB),
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
            Container(
              margin: EdgeInsets.only(left: width_8),
              child: Text(
                _bloc.listProject[index].name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: ThemeColor.clr_4C5980,
                    fontSize: fontSize_16,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
