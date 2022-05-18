part of 'edit_day_off_bloc.dart';

@immutable
abstract class EditDayOffState extends BaseState{}

class EditDayOffInitial extends EditDayOffState {}



class ClickCheckboxDurationState extends EditDayOffState {
  ClickCheckboxDurationState();
}

class ClickCheckboxTimeOffState extends EditDayOffState {
  ClickCheckboxTimeOffState();
}

class SetSelectedFromDateState extends EditDayOffState {
  SetSelectedFromDateState();
}

class SetSelectedToDateState extends EditDayOffState {
  SetSelectedToDateState();
}

class SelectMailApproverState extends EditDayOffState {
  SelectMailApproverState();
}

class UnSelectMailApproverState extends EditDayOffState {
  UnSelectMailApproverState();
}

class RemovedMailState extends EditDayOffState {
  RemovedMailState();
}

class SearchMailState extends EditDayOffState {
  SearchMailState();
}

class InitDataListMailState extends EditDayOffState {
  InitDataListMailState();
}
class SetReasonSuccessState extends EditDayOffState {
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

class AddListEmailApproversState extends EditDayOffState {
  AddListEmailApproversState();
}

class showAlertBottomSheetDialogState extends ApiSuccessState {
  showAlertBottomSheetDialogState();
}
class ValidateDayOffState extends EditDayOffState{
  final bool valid;
  final String? message;
  ValidateDayOffState(this.valid, {this.message});
}

