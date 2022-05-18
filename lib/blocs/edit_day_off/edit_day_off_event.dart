part of 'edit_day_off_bloc.dart';

@immutable
abstract class EditDayOffEvent {}

class ClickCheckboxDurationEvent extends EditDayOffEvent{
  final Mode? value;
  final bool? isSelect;
  ClickCheckboxDurationEvent({this.value,this.isSelect});
}

class ClickCheckboxTimeOffEvent extends EditDayOffEvent{
  final TimeOff? value;
  ClickCheckboxTimeOffEvent({this.value,});
}
class SetSelectedFromDateEvent extends EditDayOffEvent {
  final DateTime setSelectedFromDate;

  SetSelectedFromDateEvent({required this.setSelectedFromDate});
}

class SetSelectedToDateEvent extends EditDayOffEvent {
  final DateTime setSelectedToDate;

  SetSelectedToDateEvent({required this.setSelectedToDate});
}

class SelectMailApproverEvent extends EditDayOffEvent {
  final int? index;
  SelectMailApproverEvent({this.index});
}

class UnSelectMailApproverEvent extends EditDayOffEvent {
  final int index;
  UnSelectMailApproverEvent({required this.index});
}

class RemovedMailEvent extends EditDayOffEvent {
  final int index;
  final bool? isChecked;
  RemovedMailEvent({ required this.index,this.isChecked});
}

class SearchMailEvent extends EditDayOffEvent {
  final String? value;
  SearchMailEvent({this.value});
}

class InitDataListMailEvent extends EditDayOffEvent {
  InitDataListMailEvent();
}
class SetReasonEvent extends EditDayOffEvent {
  final ReasonSettings? reason;
  SetReasonEvent({this.reason});
}

class GetListEmailApproversEvent extends EditDayOffEvent {
  GetListEmailApproversEvent();
}

class GetReasonEvent extends EditDayOffEvent {
  GetReasonEvent();
}

class AddListEmailApproversEvent extends EditDayOffEvent {
  final List<EmailSettings>? emailSettings;
  AddListEmailApproversEvent({this.emailSettings});
}

class SubmitDayOffEvent extends EditDayOffEvent {
  final IFurloughLetters iFurloughLetters ;
  SubmitDayOffEvent({required this.iFurloughLetters});
}

class ValidateDayOffEvent extends EditDayOffEvent {
  ValidateDayOffEvent();
}