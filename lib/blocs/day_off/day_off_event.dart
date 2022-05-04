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

class AddMailApproverEvent extends DayOffEvent {
  int? index;
  AddMailApproverEvent({this.index});
}

class RemovedMailEvent extends DayOffEvent {
  int? index;
  bool? isChecked;
  RemovedMailEvent({this.index,this.isChecked});
}

class SearchMailEvent extends DayOffEvent {
  String? value;
  SearchMailEvent({this.value});
}

class InitDataListMailEvent extends DayOffEvent {
  InitDataListMailEvent();
}
class SetReasonEvent extends DayOffEvent {
  final String? reason;
  SetReasonEvent({this.reason});
}
