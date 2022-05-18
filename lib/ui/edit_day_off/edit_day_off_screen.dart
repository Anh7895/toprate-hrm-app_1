import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/day_off/day_off_bloc.dart';
import 'package:toprate_hrm/blocs/my_day_off/my_day_off_bloc.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/dialog/alert_dialog.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/datasource/data/model/entity/enumMode.dart';
import 'package:toprate_hrm/ui/edit_day_off/component/approve_item.dart';
import 'package:toprate_hrm/ui/edit_day_off/component/reason_item.dart';
import 'package:toprate_hrm/ui/edit_day_off/component/row_timer_item.dart';
import 'package:toprate_hrm/ui/edit_day_off/component/timer_item.dart';


import '../../common/multi_language/internationalization.dart';
import '../my_day_off/conponent/app_bar_item.dart';
import 'component/duration_item.dart';

class EditDayOffScreen extends StatefulWidget {
  MyDayOff myDayOff;
  EditDayOffScreen({Key? key,required this.myDayOff}) : super(key: key);

  @override
  State<EditDayOffScreen> createState() => _EditDayOffScreenState();
}

class _EditDayOffScreenState extends State<EditDayOffScreen> {
  DayOffBloc _bloc = Injector.resolve<DayOffBloc>();

  @override
  void initState() {
    // _bloc.listMailSelect.add(widget.myDayOff.email);
    if(widget.myDayOff.manyday==true){
      _bloc.isDayOffOneDay=false;
      _bloc.character = Mode.ManyDay;
    }
    else{  _bloc.isDayOffOneDay=true;
    if(widget.myDayOff.typeDayOff=="CANGAY") _bloc.timeOff= TimeOff.Allday;
    else if(widget.myDayOff.typeDayOff=="SANG") _bloc.timeOff= TimeOff.Morning;
    else _bloc.timeOff= TimeOff.Afternoon;
    }
    _bloc.textDescriptionController.text = widget.myDayOff.content??"";
    // TODO: implement initState
    _bloc.fromController.text =
        DateFormat("dd/MM/yyyy").format(widget.myDayOff.fromDate);
    _bloc.toController.text =
        DateFormat("dd/MM/yyyy").format(widget.myDayOff.toDate??widget.myDayOff.fromDate);
    _bloc.add(GetListEmailApproversEvent());
    _bloc.add(GetReasonEvent());
    _bloc.focusDescription.addListener(() {
      if (_bloc.focusDescription.hasFocus) {
        _bloc.scroll.animateTo(_bloc.scroll.position.maxScrollExtent+300,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });
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
                    icon: ic_like,
                    dismissible: false,
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, RouteName.checkinScreen);
                    },
                    nameButton: "close");

              }

              if (state is ValidateDayOffState) {
                if (state.valid) {
                  return;
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(state.message ?? "Error"),
                ));
              }
            },
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.fromLTRB(25, 25, 25,0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          ItemAppBar(
                              text: S.of(context).translate("textDayOff"),
                              textStyle: TextStyleCommon.textCustomNormalStyle(context,
                                  color: ThemeColor.clr_CE6161,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize_32),
                              colorIcon: ThemeColor.clr_CE6161),
                          Expanded(child: _buildDetailBody(context)),
                        ],
                      ),
                      // _buildButtonBottomWidget(),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildDetailBody(BuildContext context) {
    return SingleChildScrollView(
      controller: _bloc.scroll,
      child: Column(
        children: [
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
          ItemReason(dayOffBloc: _bloc,text: widget.myDayOff.reason,),
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
                scrollPadding: EdgeInsets.only(bottom: height_400 ),
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
                  hintStyle: TextStyleCommon.textHintStyle,
                ),
                focusNode: _bloc.focusDescription,
              ),
            ],
          ),
          ItemApprove(dayOffBloc: _bloc),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).translate("status"),style: TextStyleCommon.textTitleStyle,),
                SizedBox(height: height_7,),
                (widget.myDayOff.status=="TUCHOI") ?
                Column(
                  children: [
                    Row(
                      children: [
                        Text(widget.myDayOff.status,style: TextStyleCommon.textCustomNormalStyle(context,fontWeight: FontWeight.bold,fontSize: 12,color: ThemeColor.clr_CE6161),),
                        Text(" ${S.of(context).translate("by")}",style: TextStyleCommon.textCustomNormalStyle(context,fontWeight: FontWeight.w400,fontSize: 12,color: ThemeColor.clr_000000),),
                        Text(" ${widget.myDayOff.nameReject}",style: TextStyleCommon.textCustomNormalStyle(context,fontWeight: FontWeight.bold,fontSize: 12,color: ThemeColor.clr_000000),),
                      ],
                    ),
                      SizedBox(height: height_7,),
                    Row(
                      children: [
                        Text("${S.of(context).translate("reason")}: ",style: TextStyleCommon.textCustomNormalStyle(context,fontWeight: FontWeight.bold,fontSize: 12,color: ThemeColor.clr_000000),),
                        Text("${widget.myDayOff.reasonReject} ",style: TextStyleCommon.textCustomNormalStyle(context,fontWeight: FontWeight.w400,fontSize: 12,color: ThemeColor.clr_000000),),

                      ],
                    )
                  ],
                ):(widget.myDayOff.status=="DADUYET")?
                Text(widget.myDayOff.status,style: TextStyleCommon.textCustomNormalStyle(context,fontWeight: FontWeight.bold,fontSize: 12,color: ThemeColor.clr_CE6161),):
                Text(widget.myDayOff.status,style: TextStyleCommon.textCustomNormalStyle(context,fontWeight: FontWeight.bold,fontSize: 12,color: ThemeColor.clr_979797),),



              ],
            ),
          ),
          SizedBox(height: height_50,),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width_10),
                child: Row(
                  children: [
                    BaseButton(
                      width: MediaQuery.of(context).size.width/2.9,
                      height: height_56,
                      title: S.of(context).translate("delete"),
                      style: TextStyleCommon.textButtonStyle(context),
                      backgroundColor: ThemeColor.clr_9C9EB9,
                    ),
                    BaseButton(
                      width: MediaQuery.of(context).size.width/2.9,
                      height: height_56,
                      title: S.of(context).translate("textEdit"),
                      style: TextStyleCommon.textButtonStyle(context),
                      backgroundColor: ThemeColor.clr_CE6161,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
