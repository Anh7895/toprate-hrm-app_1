
import 'package:flutter/material.dart';

@immutable
abstract class SplashEvent {}

class GetUserInformationEvent extends SplashEvent {
  GetUserInformationEvent();
}