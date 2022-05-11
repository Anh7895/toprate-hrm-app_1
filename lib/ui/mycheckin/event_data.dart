import 'dart:ui';
import 'package:toprate_hrm/common/resource/theme_color.dart';

enum EventStatus {
  notCheckin,
  checkedIn,
  dayOff,
  holiday,
}

extension ExtensionEventStatus on EventStatus {
  Color get statusColor {
    switch (this) {
      case EventStatus.notCheckin:
        return ThemeColor.clr_F4F6FA;
      case EventStatus.checkedIn:
        return ThemeColor.clr_FF9B90;
      case EventStatus.dayOff:
        return ThemeColor.clr_8F8F8F;
      case EventStatus.holiday:
        return ThemeColor.clr_F30000;
    }
  }

  String get title {
    switch (this) {
      case EventStatus.notCheckin:
        return "Not Checkin";
      case EventStatus.checkedIn:
        return "Checked in";
      case EventStatus.dayOff:
        return "Day off";
      case EventStatus.holiday:
        return "Holiday";
    }
  }
  String get id {
    switch (this) {
      case EventStatus.notCheckin:
        return "not_checkin";
      case EventStatus.checkedIn:
        return "checked_in";
      case EventStatus.dayOff:
        return "day_off";
      case EventStatus.holiday:
        return "holiday";
    }
  }
}

class Event {
  final EventStatus status;
  const Event(this.status);
}
