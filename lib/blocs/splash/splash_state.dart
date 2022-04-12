
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:flutter/material.dart';

@immutable
abstract class SplashState extends BaseState{}

class SplashInitial extends SplashState {}

class GetUserInformationState extends SplashState {
  GetUserInformationState();
}
