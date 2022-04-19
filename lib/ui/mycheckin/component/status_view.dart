
import 'package:flutter/material.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';

import '../event_data.dart';

class ListStatusView extends StatelessWidget {
  const ListStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      // height: height_117,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              statusView(Event(EventStatus.notCheckin)),
              SizedBox(
                height: height_10,
              ),
              statusView(Event(EventStatus.checkedIn)),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              statusView(Event(EventStatus.dayOff)),
              SizedBox(
                height: height_10,
              ),
              statusView(Event(EventStatus.holiday)),
            ],
          ),
        ],
      ),
    );
  }

  Container statusView(Event event) {
    return Container(
      height: 30,
      child: Row(
        children: <Widget>[
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                color: event.status.statusColor,
                borderRadius: BorderRadius.circular(28),
              )
          ),
          SizedBox(
            width: width_11,
          ),
          Text(
            event.status.title,
            style:
            TextStyle(fontSize: fontSize_14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
