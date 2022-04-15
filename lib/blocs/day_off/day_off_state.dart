part of 'day_off_bloc.dart';

@immutable
abstract class DayOffState  extends BaseState{}

class DayOffInitial extends DayOffState {}
class ClickCheckboxDurationState extends DayOffState {
  ClickCheckboxDurationState();
}
class SetSelectedFromDateState extends DayOffState {

  SetSelectedFromDateState();
}

class SetSelectedToDateState extends DayOffState {

  SetSelectedToDateState();
}
