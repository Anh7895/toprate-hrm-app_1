import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:flutter/cupertino.dart';

abstract class HomePageState extends BaseState {}

class InitDataPageState extends HomePageState {
  final int? currentIndex;
  final List<Widget>? pages;

  InitDataPageState({this.currentIndex, this.pages});
}

class HomePageInitial extends HomePageState {
  final int? currentIndex;

  HomePageInitial({this.currentIndex});
}

class ChangePageState extends HomePageState {
  final int currentIndex;
  ChangePageState({this.currentIndex = 0});
}
