part of 'checkin_bloc.dart';

@immutable
abstract class CheckinEvent {}

class FillInformationEvent extends CheckinEvent {
  final String? date;
  FillInformationEvent({this.date});
}

class InitDataDateEvent extends CheckinEvent {}

class GetDataTimeKeepingEvent extends CheckinEvent {
  final String? date;

  GetDataTimeKeepingEvent({this.date});
}
