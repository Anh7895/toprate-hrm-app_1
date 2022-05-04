import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toprate_hrm/blocs/notification/notification_bloc.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/images/svg_image_widget.dart';

import '../../blocs/base_state/base_state.dart';
import '../../common/multi_language/internationalization.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  NotificationBloc _bloc = NotificationBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: HttpStreamHandler<NotificationBloc, BaseState>(
      bloc: _bloc,
      listener: (context, state) async {
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: width_27,vertical: height_72),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width_319,
                height: height_94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius_10),
                  color: ThemeColor.clr_FFEBEB,
                ),
                child: Row(
                  children: [
                    SizedBox(width: width_19,),
                    SVGImageWidget(
                      url: ic_daily ,
                      height: height_44,
                      width: width_47,
                    ),
                    SizedBox(width: width_13,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height_22,),
                        Text(S.of(context).translate("textTopRateApp"),style: TextStyleCommon.textStyleTopRateApp),
                        SizedBox(height: height_5,),
                        Text(S.of(context).translate("textDetailNotification"), style: TextStyleCommon.textStyleDetailNotification,),
                      ],

                    )
                  ],
                ),
              )
            ],
          ),
        );

      },
      ),
    );
  }
}
