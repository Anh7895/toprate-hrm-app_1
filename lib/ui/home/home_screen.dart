import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/home/home_bloc.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
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
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return
      HttpStreamHandler<HomeBloc, BaseState>(
        bloc: _bloc,
        listener: (context, state){

        },
        builder: (context, state){
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: width_16, vertical: height_60),
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
                                      Text("Hi, TuanLQ",style: TextStyleCommon.textHiName,),
                                    ],
                                  )
                              ),
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                Container(
                                  height: height_60,
                                  width: width_50,
                                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/en/5/52/Phineas_Flynn.png")),borderRadius: BorderRadius.circular(radius_20)),
                                ),
                                Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius_32)),
                                    child: Icon(Icons.circle,size: 16, color:ThemeColor.clr_CE6161)),
                              ],)
                            ],
                          ),
                          SizedBox(height: height_13,),
                          Container(
                            width: width_319,
                            height: height_94,
                            decoration: BoxDecoration(color: ThemeColor.clr_FFEBEB,
                            borderRadius: BorderRadius.circular(radius_20),
                                boxShadow: [BoxShadow(  color: Colors.grey.withOpacity(0.5),
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
                                child: Expanded(
                                  child: GridView.count(
                                    crossAxisCount: 3,
                                    children: [
                                        GestureDetector(
                                            onTap: (){

                                            },
                                            child: HomeCardItem(text: TextConstants.textCheckin, url: svg_ic_checkin_now, textStyle:  TextStyleCommon.textTopCardItem)),
                                        GestureDetector(
                                            onTap: (){

                                            },
                                            child: HomeCardItem(text: TextConstants.textMyCheckin, url: svg_ic_my_checkin, textStyle: TextStyleCommon.textTopCardItem)),
                                        GestureDetector(
                                            onTap: (){

                                            },
                                            child: HomeCardItem(text: TextConstants.textDayOff, url:  svg_ic_day_off, textStyle: TextStyleCommon.textTopCardItem,)),
                                        GestureDetector(
                                            onTap:(){

                                            },
                                            child: HomeCardItem(text: TextConstants.textNews, url: svg_ic_news, textStyle: TextStyleCommon.textBottomCardItem)),
                                        GestureDetector(
                                            onTap: (){

                                            },
                                            child: HomeCardItem(text: TextConstants.textSurvey, url: svg_ic_survey, textStyle: TextStyleCommon.textBottomCardItem)),
                                      ],),

                                ),
                              ),
                              Container(
                                width: width_250,
                                height: height_140,
                                decoration: BoxDecoration(image:
                                DecorationImage(image: AssetImage(png_home_image),fit: BoxFit.cover)
                                ),
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
      );

  }
}
