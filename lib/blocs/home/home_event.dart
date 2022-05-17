part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetUserInfoEvent extends HomeEvent{

}
class SetIndexImageSliderEvent extends HomeEvent{
  final int index;
  SetIndexImageSliderEvent({required this.index});
}
