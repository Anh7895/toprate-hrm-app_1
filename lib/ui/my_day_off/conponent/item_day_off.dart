import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';

import '../../../common/utils/time_utils.dart';

class ItemDayOff extends StatelessWidget {
   ItemDayOff(this.type,this.fromDate, this.reason, this.status, this.typeDayOff,{this.toDate,this.content});
  bool type = false;
  DateTime fromDate;
  DateTime? toDate ;
  String? content;
  String reason;
  String typeDayOff;
  String status;
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: MediaQuery.of(context).size.width,
        height: height_104,
        decoration: BoxDecoration(
          color: ThemeColor.clr_FFFFFF,
          borderRadius: BorderRadius.circular(radius_16),
            boxShadow: [BoxShadow( color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 20,
              offset: Offset(0, 5),)]
        ),
      child: Row(
        children: [
          SizedBox(width: width_20,),
          type?Container(
            width: width_66,
            decoration: BoxDecoration(
              color: status=="DADUYET"?ThemeColor.clr_CE6161:(status == "CHUADUYET")?ThemeColor.clr_D6D9E0:ThemeColor.clr_9C9EB9,
              borderRadius: BorderRadius.circular(radius_20),
            ),
            margin: EdgeInsets.symmetric(vertical: height_17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(dataMothFormatter(fromDate),style: TextStyleCommon.textDateMyDayOffStyle(context),),
                    Text(dataDayFormatter(fromDate),style: TextStyleCommon.textDateMyDayOffStyle(context,fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right,color: ThemeColor.clr_FFFFFF,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(dataMothFormatter(toDate??fromDate),style: TextStyleCommon.textDateMyDayOffStyle(context),),
                     Text(dataDayFormatter(toDate??fromDate),style : TextStyleCommon.textDateMyDayOffStyle(context,fontWeight: FontWeight.bold,fontSize: 16))
                  ],
                ),
              ],
            ),
          ):
          Container(
            width: width_66,
            decoration: BoxDecoration(
              color: status=="DADUYET"?ThemeColor.clr_CE6161:(status == "CHUADUYET")?ThemeColor.clr_D6D9E0:ThemeColor.clr_9C9EB9,
              borderRadius: BorderRadius.circular(radius_20),
            ),
            margin: EdgeInsets.symmetric(vertical: height_17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(dataMothFormatter(fromDate),style: TextStyleCommon.textDateMyDayOffStyle(context)),
                Text(dataDayFormatter(fromDate),style : TextStyleCommon.textDateMyDayOffStyle(context,fontWeight: FontWeight.bold,fontSize: 16))
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: height_17,horizontal: width_20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text(reason,overflow:TextOverflow.ellipsis,style: TextStyleCommon.textStatusMyDayOffStyle(context,fontSize: 16,fontWeight:FontWeight.bold,color: ThemeColor.clr_2D3142),)),
                      status=="DADUYET"?Text(status,overflow:TextOverflow.ellipsis,style: TextStyleCommon.textStatusMyDayOffStyle(context,fontSize: 10,fontWeight:FontWeight.bold,color: ThemeColor.clr_CE6161),)
                      : status=="CHUADUYET"?Text(status,overflow:TextOverflow.ellipsis,style: TextStyleCommon.textStatusMyDayOffStyle(context,fontSize: 10,fontWeight:FontWeight.bold,color: ThemeColor.clr_D6D9E0),)
                      :Text(status,overflow:TextOverflow.ellipsis,style: TextStyleCommon.textStatusMyDayOffStyle(context,fontSize: 10,fontWeight:FontWeight.bold,color: ThemeColor.clr_9C9EB9
                      ),)
                      ,
                    ],
                  ),
                  Expanded(child: Text(typeDayOff,overflow:TextOverflow.ellipsis,style: TextStyleCommon.textStatusMyDayOffStyle(context,fontSize: 14,fontWeight:FontWeight.w500,color: ThemeColor.clr_9C9EB9),)),
                  Expanded(child: Text(content??"",overflow:TextOverflow.ellipsis,style: TextStyleCommon.textStatusMyDayOffStyle(context,fontSize: 10,fontWeight:FontWeight.w400,color: ThemeColor.clr_9C9EB9),)),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
