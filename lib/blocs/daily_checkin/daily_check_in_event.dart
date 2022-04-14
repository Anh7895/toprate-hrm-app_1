part of 'daily_check_in_bloc.dart';

@immutable
abstract class DailyCheckInEvent {}

class InitDataEvent extends DailyCheckInEvent {
  InitDataEvent();
}

class BackDayEvent extends DailyCheckInEvent {
  BackDayEvent();
}

class NextDayEvent extends DailyCheckInEvent {
  NextDayEvent();
}

class SelectProjectEvent extends DailyCheckInEvent {
  int? indexSelect;
  SelectProjectEvent({this.indexSelect});
}

class FillNameProjectEvent extends DailyCheckInEvent {
  final String ? nameProject;
  final ProjectData? projectData;
  int? index;
  FillNameProjectEvent({this.projectData,this.index,this.nameProject});
}
