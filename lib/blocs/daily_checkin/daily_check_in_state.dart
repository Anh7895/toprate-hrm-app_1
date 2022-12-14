part of 'daily_check_in_bloc.dart';

@immutable
abstract class DailyCheckInState extends BaseState {}

class DailyCheckInInitial extends DailyCheckInState {}

class InitDataState extends DailyCheckInState {
  InitDataState();
}

class InitDateState extends DailyCheckInState {
  InitDateState();
}

class BackDayState extends DailyCheckInState {
  BackDayState();
}

class SelectDayState extends DailyCheckInState {
  SelectDayState();
}

class CantSelectDayState extends DailyCheckInState {
  CantSelectDayState();
}

class FormatChangeState extends DailyCheckInState {
  FormatChangeState();
}

class DayPredicateState extends DailyCheckInState {
  DayPredicateState();
}

class RemoveProjectState extends DailyCheckInState {
  RemoveProjectState();
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

class GetAllSettingBlockState extends ApiSuccessState {
  GetAllSettingBlockState();
}

class GetProjectByDateState extends ApiSuccessState {
  GetProjectByDateState();
}

class GetListEditBlocState extends ApiSuccessState {
  GetListEditBlocState();
}

class GetAllProjectState extends ApiSuccessState {
  GetAllProjectState();
}

class showAlertBottomSheetDialogState extends ApiSuccessState {
  showAlertBottomSheetDialogState();
}

class ClickSubmitState extends DailyCheckInState {
  ClickSubmitState();
}

class CheckInState extends ApiSuccessState {
  CheckInState();
}

class GetTimekeepingByUserAndByDateState extends ApiSuccessState {
  GetTimekeepingByUserAndByDateState();
}

class SubmitFailState extends DailyCheckInState {
  SubmitFailState();
}
class CheckBackState extends DailyCheckInState {
  CheckBackState();
}
class CheckNextState extends DailyCheckInState {
  CheckNextState();
}
class CheckChooseState extends DailyCheckInState {
  CheckChooseState();
}



