part of 'checkin_bloc.dart';

@immutable
abstract class CheckinEvent {}

class FillInformationEvent extends CheckinEvent {
  final String? date;
  FillInformationEvent({this.date});
}

class FormatChangeEvent extends CheckinEvent {
  final CalendarFormat? _format;
  FormatChangeEvent(this._format);
}

class SelectDayEvent extends CheckinEvent {
  final DateTime? selectDay;
  final DateTime? focusDay;
  SelectDayEvent(this.selectDay, this.focusDay);
}

class CantSeclectDayEvent extends CheckinEvent {
  CantSeclectDayEvent();
}

class DayPredicateEvent extends CheckinEvent {
  final DateTime? date;
  DayPredicateEvent(this.date);
}

class InitDataDateEvent extends CheckinEvent {}

class GetDataTimeKeepingEvent extends CheckinEvent {
  final String? date;

  GetDataTimeKeepingEvent({this.date});
}
