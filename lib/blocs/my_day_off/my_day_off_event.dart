part of 'my_day_off_bloc.dart';

@immutable
abstract class MyDayOffEvent {}

class InitDataEvent extends MyDayOffEvent {
  InitDataEvent();
}
