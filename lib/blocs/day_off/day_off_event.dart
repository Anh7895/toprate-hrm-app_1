part of 'day_off_bloc.dart';

@immutable
abstract class DayOffEvent {}
class ClickCheckboxDurationEvent extends DayOffEvent{
  Mode? value;
  bool? isSelect;
  ClickCheckboxDurationEvent({this.value,this.isSelect});
}
class SetSelectedFromDateEvent extends DayOffEvent {
  final String? setSelectedFromDate;

  SetSelectedFromDateEvent({this.setSelectedFromDate});
}

class SetSelectedToDateEvent extends DayOffEvent {
  final String? setSelectedToDate;

  SetSelectedToDateEvent({this.setSelectedToDate});
}
