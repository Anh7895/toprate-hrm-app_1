import 'dart:async';

import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardBloc extends Bloc<HomePageEvent, BaseState> {
  DashboardBloc() : super(HomePageInitial()) {
    on<InitDataPageEvent>(initPageData);
    on<ChangePageEvent>(changePage);
  }

  PageController controller = PageController();
  int currentIndex = 0;

  final List<Widget> pages = [
    Container(),
    Container(),
    Container(),
  ];

  FutureOr<void> initPageData(
      InitDataPageEvent event, Emitter<BaseState> emit) {
    emit(InitDataPageState(currentIndex: currentIndex, pages: pages));
  }

  FutureOr<void> changePage(ChangePageEvent event, Emitter<BaseState> emit) {
    this.currentIndex = event.currentIndex;
    emit(ChangePageState(currentIndex: currentIndex));
  }
}
