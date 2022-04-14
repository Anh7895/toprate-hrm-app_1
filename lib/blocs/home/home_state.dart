part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends BaseState {}

class GetUserInfoSuccessState extends HomeState {
  GetUserInfoSuccessState();
}
