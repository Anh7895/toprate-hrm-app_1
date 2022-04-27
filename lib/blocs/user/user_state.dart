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
