import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/home/home_bloc.dart';
import 'package:toprate_hrm/common/config/nav_key.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';
import 'package:toprate_hrm/datasource/data/model/user_information.dart';
import 'package:toprate_hrm/ui/dashboard/dashboard_screen.dart';
import 'package:toprate_hrm/ui/home/conponent/card_item.dart';

import '../../common/resource/strings.dart';
import '../../common/utils/time_utils.dart';
import '../../common/widgets/images/svg_image_widget.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  HomeBloc _bloc = HomeBloc();
  double width =0;
  double height = 0;
  UserInformation userInformation = UserInformation();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return
      Scaffold(
        body: HttpStreamHandler<HomeBloc, BaseState>(
          bloc: _bloc,
          listener: (context, state){

          },
          builder: (context, state){
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: width_16,vertical: height_60),
                child: Container(
                  width: width,
                  height: height,
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.wb_sunny_sharp, color: ThemeColor.clr_CE6161, size: 16,),
                                            SizedBox(width: width_10,),
                                            Text(dateFormatter(DateTime.now()),style: TextStyleCommon.textDate,),
                                          ],
                                        ),
                                        Text("Hi, ${LocalUserData.getInstance.user?.firstName}",style: TextStyleCommon.textHiName,),
                                      ],
                                    )
                                ),
                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width_2,bottom: height_3),
                                    height: height_60,
                                    width: width_50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage(LocalUserData.getInstance.user.avatarUrl??"https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png"))
                                        ,borderRadius: BorderRadius.circular(radius_20)),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: ThemeColor.clr_FFFFFF,width: width_3,style: BorderStyle.solid),
                                          borderRadius: BorderRadius.circular(radius_32)),
                                      child: Container(color: ThemeColor.clr_FFFFFF,child: Icon(Icons.circle,size: radius_12, color:ThemeColor.clr_CE6161))),
                                ],)
                              ],
                            ),
                            SizedBox(height: height_13,),
                            Container(
                              width: width,
                              height: height_94,
                              margin: EdgeInsets.symmetric(horizontal: width_5),
                              decoration: BoxDecoration(color: ThemeColor.clr_FFEBEB,
                              borderRadius: BorderRadius.circular(radius_20),
                                  boxShadow: [BoxShadow( color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(0, 5),)]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SVGImageWidget(
                                    url: ic_daily ,
                                    height: height_44,
                                    width: width_47,
                                  ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: height_22,),
                                      Text(TextConstants.textRemindTop,style: TextStyleCommon.textHomeTitle),
                                      Text(TextConstants.textRemindBottom, style: TextStyleCommon.textHomeTitle,),
                                    ]
                                  ),
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Icon(Icons.keyboard_arrow_right_outlined),
                                  )
                                ],
                              )
                            ),
                            SizedBox(height: height_14,),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(TextConstants.textTitle, style: TextStyleCommon.textHomeTitle)),
                             Stack(
                               alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  height: height_420,
                                  child: GridView.count(
                                    crossAxisCount: 3,
                                    children: [
                                        GestureDetector(
                                            onTap: (){
                                              Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
                                                  MaterialPageRoute(builder: (context) => DashboardScreen(index: 1)),(Route<dynamic> route) => false);
                                            },
                                            child: HomeCardItem(text: TextConstants.textCheckin, url: svg_ic_checkin_now, textStyle:  TextStyleCommon.textTopCardItem)),
                                        GestureDetector(
                                            onTap: (){
                                              Navigator.pushNamed(context,RouteName.checkinScreen);
                                            },
                                            child: HomeCardItem(text: TextConstants.textMyCheckin, url: svg_ic_my_checkin, textStyle: TextStyleCommon.textTopCardItem)),
                                        GestureDetector(
                                            onTap: (){
                                              Navigator.pushNamed(context,RouteName.dayOffScreen);
                                            },
                                            child: HomeCardItem(text: TextConstants.textDayOff, url:  svg_ic_day_off, textStyle: TextStyleCommon.textTopCardItem,)),
                                        GestureDetector(
                                            onTap:(){
                                              Navigator.pushNamed(context,RouteName.notification);
                                            },
                                            child: HomeCardItem(text: TextConstants.textNews, url: svg_ic_news, textStyle: TextStyleCommon.textBottomCardItem)),
                                        GestureDetector(
                                            onTap: (){

                                            },
                                            child: HomeCardItem(text: TextConstants.textSurvey, url: svg_ic_survey, textStyle: TextStyleCommon.textBottomCardItem)),
                                      ],),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: width_250,
                                      height: height_140,
                                      decoration: BoxDecoration(image:
                                      DecorationImage(image: AssetImage(png_home_image),fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: height_20,)
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              );

          },
        ),
      );

  }
}
