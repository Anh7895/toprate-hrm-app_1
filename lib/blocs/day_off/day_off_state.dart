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

class AddMailApproverState extends DayOffState {
  AddMailApproverState();
}

class RemovedMailState extends DayOffState {
  RemovedMailState();
}

class SearchMailState extends DayOffState {
  SearchMailState();
}

