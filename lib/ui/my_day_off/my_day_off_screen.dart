import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toprate_hrm/blocs/my_day_off/my_day_off_bloc.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/ui/my_day_off/conponent/item_day_off.dart';

import '../../blocs/base_state/base_state.dart';
import '../../common/multi_language/internationalization.dart';
import '../../common/resource/sizes.dart';
import '../../common/resource/text_style.dart';
import '../../common/resource/theme_color.dart';
import '../../common/widgets/http_stream_handler.dart';
import '../day_off/component/app_bar_item.dart';

class MyDayOffScreen extends StatefulWidget {
  const MyDayOffScreen({Key? key}) : super(key: key);

  @override
  State<MyDayOffScreen> createState() => _MyDayOffScreenState();
}

class _MyDayOffScreenState extends State<MyDayOffScreen> {
  MyDayOffBloc _bloc = Injector.resolve<MyDayOffBloc>();
  double width =0;
  double height = 0;
  @override
  void initState() {
    _bloc.add(InitDataEvent());
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return
      Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            elevation: 0,
            backgroundColor: ThemeColor.clr_FFFFFF,
          ),
        ),
        body: HttpStreamHandler<MyDayOffBloc, BaseState>(
          bloc: _bloc,
          listener: (context, state){

          },
          builder: (context, state){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: width_16,vertical: height_20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: width_14),
                          child: ItemAppBar(
                              text: S.of(context).translate("textMyDayOff"),
                              textStyle: TextStyleCommon.textCustomNormalStyle(context,
                                  color: ThemeColor.clr_CE6161,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize_32),
                              colorIcon: ThemeColor.clr_CE6161),
                        ),
                        SizedBox(height: height_30,),
                        Container(
                          width: width,
                          height: height/1.5,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: _bloc.list.length,
                              itemBuilder: (context, index){
                              return Column(
                              children: [
                                GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, RouteName.editDayOffScreen, arguments: _bloc.list[index]);
                                    },
                                    child: ItemDayOff(_bloc.list[index].manyday??true, _bloc.list[index].fromDate, _bloc.list[index].reason, _bloc.list[index].status, _bloc.list[index].typeDayOff,content: _bloc.list[index].content,toDate: _bloc.list[index].toDate,)),
                                SizedBox(height: height_17,)
                              ],
                            );
                          }),
                        )
                      ],
                    ),
                    SizedBox(height: height_20,),
                    BaseButton(title: "New Day Off", onPressed: (){
                      Navigator.pushNamed(context, RouteName.dayOffScreen);
                    },)
                  ],
                ),
              ),
            );

          },
        ),
      );

  }
}
