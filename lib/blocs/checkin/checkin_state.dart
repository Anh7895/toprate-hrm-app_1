part of 'checkin_bloc.dart';

@immutable
abstract class CheckinState extends BaseState{}

class CheckinInitial extends CheckinState {}

class InitDataDateState extends CheckinState {
  InitDataDateState();
}

class FillInformationState extends CheckinState {
  FillInformationState();
}

class SelectDayState extends CheckinState {
  SelectDayState();
}

class CantSelectDayState extends CheckinState {
  CantSelectDayState();
}

class CantSelectThisDayState extends CheckinState {
  CantSelectThisDayState();
}

class FormatChangeState extends CheckinState {
  FormatChangeState();
}

class DayPredicateState extends CheckinState {
  DayPredicateState();
}


class GetDataTimeKeepingState extends CheckinState{
  GetDataTimeKeepingState();
}

class GetSettingState extends CheckinState{
  GetSettingState();
}

class InitDataState extends CheckinState{
  InitDataState();
}


