
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/splash/splash_state.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/utils/preference_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:toprate_hrm/blocs/splash/splash_event.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/blocs/splash/splash_event.dart';

class SplashBloc extends Bloc<SplashEvent, BaseState> {
  SplashBloc() : super(SplashInitial()) {

  }
  // saveAccountInformation(OWhoAmI? user) async {
  //   return PreferenceUtils.saveAccountInformation(user);
  // }

}
