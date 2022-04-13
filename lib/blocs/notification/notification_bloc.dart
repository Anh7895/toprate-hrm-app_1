import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, BaseState> {
  NotificationBloc() : super(NotificationInitial()) {
    on<NotificationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
