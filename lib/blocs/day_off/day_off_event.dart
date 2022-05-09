part of 'day_off_bloc.dart';

@immutable
abstract class DayOffEvent {}
class ClickCheckboxDurationEvent extends DayOffEvent{
  Mode? value;
  bool? isSelect;
  ClickCheckboxDurationEvent({this.value,this.isSelect});
}

class ClickCheckboxTimeOffEvent extends DayOffEvent{
  TimeOff? value;
  ClickCheckboxTimeOffEvent({this.value,});
}
class SetSelectedFromDateEvent extends DayOffEvent {
  final String? setSelectedFromDate;

  SetSelectedFromDateEvent({this.setSelectedFromDate});
}

class SetSelectedToDateEvent extends DayOffEvent {
  final String? setSelectedToDate;

  SetSelectedToDateEvent({this.setSelectedToDate});
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
  int index;
  bool? isChecked;
  RemovedMailEvent({ required this.index,this.isChecked});
}

class SearchMailEvent extends DayOffEvent {
  String? value;
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
 final IFurloughLetters? iFurloughLetters ;
  SubmitDayOffEvent({this.iFurloughLetters});
}
