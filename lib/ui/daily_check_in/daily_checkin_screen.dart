import 'package:flutter/material.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/daily_checkin/daily_check_in_bloc.dart';
import 'package:toprate_hrm/common/dialog/bottom_sheet_dialog_utils.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/images/svg_image_widget.dart';

class DailyCheckInScreen extends StatefulWidget {
  const DailyCheckInScreen({Key? key}) : super(key: key);

  @override
  State<DailyCheckInScreen> createState() => _DailyCheckInScreenState();
}

class _DailyCheckInScreenState extends State<DailyCheckInScreen> {
  DailyCheckInBloc _bloc = Injector.resolve<DailyCheckInBloc>();

  @override
  void initState() {
    // TODO: implement initState
    _bloc.add(InitDataEvent());
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
            listener: (context, state) {},
            builder: (context, state) {
              return Stack(
                children: [
                  _buildDetailBody(context),
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
      bottom: 0,
      left: 8,
      right: 8,
      child: GestureDetector(
        onTap: () {
          showAlertBottomSheetDialog(context,
              isDismissible: true,
              icon: ic_like,
              title: TextConstants.textSuccess,
              message: "Get a good working day, thank you for your effort!");
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
                fontSize: fontSize_30,
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
      margin: EdgeInsets.only(top: height_48, bottom: height_64),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: _bloc.listTimeSubject.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildListSelected(index);
          }),
    );
  }

  Widget _buildListSelected(int index) {
    return GestureDetector(
      onTap: () async {
        _showMyDialog(context, index);
      },
      child: Container(
        width: width_336,
        height: height_56,
        margin: EdgeInsets.only(top: height_12),
        padding: EdgeInsets.symmetric(horizontal: width_20),
        decoration: BoxDecoration(
            color: _bloc.listTimeSubject[index].isSelected!
                ? Color(int.parse("0XFF" + _bloc.listTimeSubject[index].color!))
                : ThemeColor.clr_FFFFFF,
            borderRadius: BorderRadius.all(Radius.circular(radius_16)),
            border: Border.all(color: ThemeColor.clr_D6D9E0, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width_40),
              child: Text(
                _bloc.listTimeSubject[index].isSelected!
                    ? _bloc.listTimeSubject[index].nameTaskSelect!
                    : _bloc.listTimeSubject[index].name!,
                style: TextStyle(
                    color: _bloc.listTimeSubject[index].isSelected!
                        ? ThemeColor.clr_FFFFFF
                        : ThemeColor.clr_D6D9E0,
                    fontSize: fontSize_16,
                    fontWeight: _bloc.listTimeSubject[index].isSelected!
                        ? FontWeight.w500
                        : FontWeight.w300),
              ),
            ),
            GestureDetector(
              onTap: () {
                   _bloc.listTimeSubject[index].isSelected == true
                       ? _bloc.add(RemoveProjectEvent(indexSelect: index))
                       : _showMyDialog(context, index);
              },
              child: SVGImageWidget(
                url: _bloc.listTimeSubject[index].isSelected == true
                    ? ic_persic_remove_daily_checkInonal
                    : ic_add_daily_checkIn,
                width: width_24,
                height: width_24,
              ),
            )
          ],
        ),
      ),
    );
  }

  _showMyDialog(BuildContext context, int indexDaily) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
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
                        itemCount: _bloc.listData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                              onTap: () {
                                _bloc.add(
                                    SelectProjectEvent(indexSelect: index));
                                setState(() {});
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
                      onTap: () {if(_bloc.selectedIndex == _bloc.intSelectData){
                        _bloc.add(FillNameProjectEvent(
                            projectData: _bloc.listData[_bloc.intSelectData!],
                            index: indexDaily,
                            nameProject: _bloc
                                .listData[_bloc.intSelectData!].stringProject));
                        _bloc.selectedIndex = -2;
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
                _bloc.listData[index].stringProject!,
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
