part of 'daily_check_in_bloc.dart';

@immutable
abstract class DailyCheckInEvent {}

class InitDataEvent extends DailyCheckInEvent {
  InitDataEvent();
}
class GetAllSettingBlockEvent extends DailyCheckInEvent {
  GetAllSettingBlockEvent();
}

class GetAllProjectEvent extends DailyCheckInEvent {
  GetAllProjectEvent();
}

class BackDayEvent extends DailyCheckInEvent {
  BackDayEvent();
}

class SelectDayEvent extends DailyCheckInEvent {
  final DateTime? selectDay;
  final DateTime? focusDay;
  SelectDayEvent(this.selectDay, this.focusDay);
}

class FormatChangeEvent extends DailyCheckInEvent {
  final CalendarFormat? _format;
  FormatChangeEvent(this._format);
}

class DayPredicateEvent extends DailyCheckInEvent {
  final DateTime? date;
  DayPredicateEvent(this.date);
}

class NextDayEvent extends DailyCheckInEvent {
  NextDayEvent();
}

class SelectProjectEvent extends DailyCheckInEvent {
  final int? indexSelect;

  SelectProjectEvent({this.indexSelect});
}

class RemoveProjectEvent extends DailyCheckInEvent {
  final int? indexSelect;
  RemoveProjectEvent({this.indexSelect});
}

class FillNameProjectEvent extends DailyCheckInEvent {
  final String? nameProject;
  final int? index;
  final String? projectId;
  final String? avatar;
  final String? color;

  FillNameProjectEvent(
      {this.index, this.nameProject, this.projectId, this.avatar, this.color});
}

class ClickSubmitEvent extends DailyCheckInEvent {
  ClickSubmitEvent();
}

class SubmitFailEvent extends DailyCheckInEvent {
  SubmitFailEvent();
}

class CheckInEvent extends DailyCheckInEvent {
  final CheckIn? checkIn;
  CheckInEvent({this.checkIn});
}

class GetProjectByDateEvent extends DailyCheckInEvent {
  final String? date;
  GetProjectByDateEvent({this.date});
}



