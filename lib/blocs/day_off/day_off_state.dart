part of 'day_off_bloc.dart';

@immutable
abstract class DayOffState extends BaseState {}

class DayOffInitial extends DayOffState {}

class ClickCheckboxDurationState extends DayOffState {
  ClickCheckboxDurationState();
}

class ClickCheckboxTimeOffState extends DayOffState {
  ClickCheckboxTimeOffState();
}

class SetSelectedFromDateState extends DayOffState {
  SetSelectedFromDateState();
}

class SetSelectedToDateState extends DayOffState {
  SetSelectedToDateState();
}

class SelectMailApproverState extends DayOffState {
  SelectMailApproverState();
}

class UnSelectMailApproverState extends DayOffState {
  UnSelectMailApproverState();
}

class RemovedMailState extends DayOffState {
  RemovedMailState();
}

class SearchMailState extends DayOffState {
  SearchMailState();
}

class InitDataListMailState extends DayOffState {
  InitDataListMailState();
}
class SetReasonSuccessState extends DayOffState {
  SetReasonSuccessState();
}

class GetListEmailApproversState extends ApiSuccessState {
  GetListEmailApproversState();
}

class GetReasonState extends ApiSuccessState {
  GetReasonState();
}

class SubmitDayOffState extends ApiSuccessState {
  SubmitDayOffState();
}

class AddListEmailApproversState extends DayOffState {
  AddListEmailApproversState();
}

class showAlertBottomSheetDialogState extends ApiSuccessState {
  showAlertBottomSheetDialogState();
}

