part of 'daily_check_in_bloc.dart';

@immutable
abstract class DailyCheckInState extends BaseState {}

class DailyCheckInInitial extends DailyCheckInState {}

class InitDataState extends DailyCheckInState {
  InitDataState();
}

class BackDayState extends DailyCheckInState {
  BackDayState();
}

class NextDayState extends DailyCheckInState {
  NextDayState();
}

class SelectProjectState extends DailyCheckInState {
  SelectProjectState();
}

class FillNameProjectState extends DailyCheckInState {
  FillNameProjectState();
}
