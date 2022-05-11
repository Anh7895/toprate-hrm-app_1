part of 'checkin_bloc.dart';

@immutable
abstract class CheckinState extends BaseState{}

class CheckinInitial extends CheckinState {}

class InitDataDateState extends CheckinState {
  List<SelectAnIndustrialRecruitmentModel>? listDataDate;
  InitDataDateState(this.listDataDate);
}

class FillInformationState extends CheckinState {
  final String? stringDate;
  FillInformationState(this.stringDate);
}

class SelectDayState extends CheckinState {
  SelectDayState();
}

class CantSelectDayState extends CheckinState {
  CantSelectDayState();
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

class InitDataState extends CheckinState{

  InitDataState();
}
