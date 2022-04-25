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
  final String ? nameProject;
  final int? index;
  FillNameProjectEvent({this.index,this.nameProject});
}

class ClickSubmitEvent extends DailyCheckInEvent {
  ClickSubmitEvent();
}


