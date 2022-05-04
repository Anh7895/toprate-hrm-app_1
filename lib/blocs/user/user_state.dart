part of 'user_bloc.dart';

@immutable
abstract class UserState extends BaseState{}

class UserInitial extends UserState {}

class LogoutSuccessState extends UserState{
  LogoutSuccessState();
}

class LogoutFailState extends UserState{
  LogoutFailState();
}
class SelectedDateState extends UserState{
  SelectedDateState();
}
class InitDataState extends UserState{
  InitDataState();
}
class SelectedEditState extends UserState{
  SelectedEditState();
}
class ShowInfoState extends UserState{
  ShowInfoState();
}
