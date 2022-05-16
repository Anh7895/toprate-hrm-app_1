part of 'day_off_bloc.dart';

@immutable
abstract class DayOffEvent {}
class ClickCheckboxDurationEvent extends DayOffEvent{
  final Mode? value;
  final bool? isSelect;
  ClickCheckboxDurationEvent({this.value,this.isSelect});
}

class ClickCheckboxTimeOffEvent extends DayOffEvent{
  final TimeOff? value;
  ClickCheckboxTimeOffEvent({this.value,});
}
class SetSelectedFromDateEvent extends DayOffEvent {
  final DateTime setSelectedFromDate;

  SetSelectedFromDateEvent({required this.setSelectedFromDate});
}

class SetSelectedToDateEvent extends DayOffEvent {
  final DateTime setSelectedToDate;

  SetSelectedToDateEvent({required this.setSelectedToDate});
}

class SelectMailApproverEvent extends DayOffEvent {
  final int? index;
  SelectMailApproverEvent({this.index});
}

class UnSelectMailApproverEvent extends DayOffEvent {
  final int index;
  UnSelectMailApproverEvent({required this.index});
}

class RemovedMailEvent extends DayOffEvent {
  final int index;
  final bool? isChecked;
  RemovedMailEvent({ required this.index,this.isChecked});
}

class SearchMailEvent extends DayOffEvent {
  final String? value;
  SearchMailEvent({this.value});
}

class InitDataListMailEvent extends DayOffEvent {
  InitDataListMailEvent();
}
class SetReasonEvent extends DayOffEvent {
  final ReasonSettings? reason;
  SetReasonEvent({this.reason});
}

class GetListEmailApproversEvent extends DayOffEvent {
  GetListEmailApproversEvent();
}

class GetReasonEvent extends DayOffEvent {
  GetReasonEvent();
}

class AddListEmailApproversEvent extends DayOffEvent {
  final List<EmailSettings>? emailSettings;
  AddListEmailApproversEvent({this.emailSettings});
}

class SubmitDayOffEvent extends DayOffEvent {
 final IFurloughLetters iFurloughLetters ;
  SubmitDayOffEvent({required this.iFurloughLetters});
}

class ValidateDayOffEvent extends DayOffEvent {
  ValidateDayOffEvent();
}