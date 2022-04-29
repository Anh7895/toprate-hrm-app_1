part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}
class LogoutEvent extends UserEvent {
  LogoutEvent();
}

class SelectedDateEvent extends UserEvent{
  final String? setSelectedDate;
  SelectedDateEvent(this.setSelectedDate);
}

class InitDataEvent extends UserEvent{
  InitDataEvent();
}
class SelectedEditEvent extends UserEvent{
  bool? edit;
  SelectedEditEvent(this.edit);
}

