import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/datasource/data/model/entity/select_an_industrial_recruiment_model.dart';
import 'package:toprate_hrm/ui/mycheckin/checkin_screen.dart';
import 'package:toprate_hrm/ui/mycheckin/event_data.dart';

part 'checkin_event.dart';
part 'checkin_state.dart';

class CheckinBloc extends Bloc<CheckinEvent, BaseState> {
  List<SelectAnIndustrialRecruitmentModel> listDataDate = [];
  DateTime dateToday = DateTime.now();
  // final CheckinRepository checkinRepository;
//  CalendarTimekeeping? calendarTimekeeping;

  LinkedHashMap<DateTime, List<Event>> kEvents =
  LinkedHashMap<DateTime, List<Event>>(
    equals: isSameDay,
    hashCode: getHashCode,
  );

  Map<DateTime, List<Event>> listEvent = {};


  List<Event> getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[DateTime(day.day)] ?? [];
  }

  String? stringData = '';

  CheckinBloc() : super(CheckinInitial()) {
    on<CheckinEvent>((event, emit) {
      getMonthFilter();
      add(GetDataTimeKeepingEvent(date: DateFormat("MM-yyyy").format(dateToday)));
      emit(InitDataDateState(listDataDate));
    });

    on<FillInformationEvent>((event, emit) {
      stringData = event.date;
      dateToday = DateFormat("MM/yyyy").parse(event.date!);
      kEvents.clear();
      listEvent.clear();
      add(GetDataTimeKeepingEvent(date: "${stringData?.split('/').first}-${stringData?.split('/').last}"));
      emit(FillInformationState(listDataDate[0].selectAnIndustrialRecruitment));
    });

    on<GetDataTimeKeepingEvent>((event, emit) => getTimeKeeping(event, emit));
  }

  getMonthFilter() {
    DateFormat formatter = DateFormat('MM/yyyy');
    stringData = formatter.format(dateToday);
    for (int i = 0; i < 12; i++) {
      print("I $i");
      listDataDate.add(SelectAnIndustrialRecruitmentModel(
          selectAnIndustrialRecruitment:
          formatter.format(DateTime(dateToday.year, dateToday.month - i))));
    }
  }

  getDateToday(){

  }

  getTimeKeeping(GetDataTimeKeepingEvent event, Emitter<BaseState> emit){}

  // getTimeKeeping(
  //     GetDataTimeKeepingEvent event, Emitter<BaseState> emit) async {
  //   DateTime tempDate;
  //   try {
  //     emit(StartCallApiState());
  //     final response = await checkinRepository.getTimeKeeping(event.date);
  //     if (response == null) {
  //       print("Error: data is null");
  //     } else {
  //       response.data as CalendarTimekeeping;
  //       calendarTimekeeping = response.data;
  //       print(response.data?.timekeeping?.dayShift);
  //       response.data?.timekeeping?.dayShift?.forEach((p0) {
  //         tempDate =  DateFormat("dd-MM-yyyy").parse(p0.date!);
  //         listEvent[DateTime(tempDate.day)] =
  //             List.generate(1, (index) => Event(EventStatus.notCheckin));
  //       });
  //       response.data?.timekeeping?.nightShift?.forEach((p0) {
  //         tempDate =  DateFormat("dd-MM-yyyy").parse(p0.date!);
  //         print("date $tempDate");
  //         listEvent[DateTime(tempDate.day)] =
  //             List.generate(1, (index) => Event(EventStatus.checkedIn));
  //       });
  //       response.data?.timekeeping?.dayHoliday?.forEach((p0) {
  //         tempDate =  DateFormat("dd-MM-yyyy").parse(p0.date!);
  //         print("date $tempDate");
  //         listEvent[DateTime(tempDate.day)] =
  //             List.generate(1, (index) => Event(EventStatus.dayOff));
  //       });
  //       response.data?.timekeeping?.nightHoliday?.forEach((p0) {
  //         tempDate =  DateFormat("dd-MM-yyyy").parse(p0.date!);
  //         print("date $tempDate");
  //         listEvent[DateTime(tempDate.day)] =
  //             List.generate(1, (index) => Event(EventStatus.holiday));
  //       });
  //       print("List Data ${listEvent.entries}");
  //       kEvents.addAll(listEvent);
  //       print("List Data ${kEvents.length}");
  //       emit(GetDataTimeKeepingState());
  //     }
  //   } on DioError catch (e) {
  //     print("Error $e");
  //     emit(ApiErrorState(error: e));
  //   } catch (e) {
  //     emit(
  //         ApiErrorState(
  //             errorMessage: TextConstants.text101Err));    }
  //
  // }



  @override
  Stream<CheckinState> mapEventToState(
      CheckinEvent event,
      ) async* {
    // TODO: implement mapEventToState
  }

}
