import 'dart:collection';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/common/utils/extensions.dart';
import 'package:toprate_hrm/datasource/data/model/entity/select_an_industrial_recruiment_model.dart';
import 'package:toprate_hrm/datasource/repository/daily_checkin_repository.dart';
import 'package:toprate_hrm/ui/mycheckin/checkin_screen.dart';
import 'package:toprate_hrm/ui/mycheckin/event_data.dart';

part 'checkin_event.dart';
part 'checkin_state.dart';

class CheckinBloc extends Bloc<CheckinEvent, BaseState> {
  DateTime dateToday = DateTime.now();
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  final DailyCheckInRepository dailyCheckInRepository;
  OTimekeepingCalendar? calendarTimekeeping;
  List<CheckinDay> listCheckin =[];
  List<OTimekeepingCalendarSettings> listSetting = [];

  LinkedHashMap<DateTime, List<Event>> kEvents =
  LinkedHashMap<DateTime, List<Event>>(
    equals: isSameDay,
    hashCode: getHashCode,
  );

  Map<DateTime, List<Event>> listEvent = {};


  List<Event> getEventsForDay(DateTime day) {
    return kEvents[DateTime(day.day)] ?? [];
  }

  String? stringData = '';

  CheckinBloc(this.dailyCheckInRepository) : super(CheckinInitial()) {
    on<CheckinEvent>((event, emit) {

      emit(InitDataDateState());
    });
    on<InitDataEvent>((event, emit) {
      fakeDataCheckinDay();
      emit(InitDataState());
    });

    on<SelectDayEvent>((event, emit) => onDaySelect(event, emit));
    on<CantSeclectDayEvent>((event, emit) => cantSelectDay(event, emit));
    on<CantSeclectThisDayEvent>((event, emit) => cantSelectThisDay(event, emit));
    on<FormatChangeEvent>((event, emit) => onFormatChange(event, emit));
    on<DayPredicateEvent>((event, emit) => onDayPredicate(event, emit));
    // on<FillInformationEvent>((event, emit) {
    //   stringData = event.date;
    //   dateToday = DateFormat("MM/yyyy").parse(event.date!);
    //   kEvents.clear();
    //   listEvent.clear();
    //   add(GetDataTimeKeepingEvent());
    //   emit(FillInformationState());
    // });
    on<GetDataTimeKeepingEvent>((event, emit) => getTimeKeeping(event, emit));
    on<GetSettingEvent>((event, emit) => getSetting(event, emit));
  }

  onDaySelect(SelectDayEvent event, Emitter<BaseState> emit) async {
    selectedDay = event.selectDay!;
    focusedDay = event.focusDay!;
    emit(SelectDayState());
  }

  cantSelectDay(CantSeclectDayEvent event, Emitter<BaseState> emit) async {
    Fluttertoast.showToast(
      msg: "you can't choose dates after today",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
    emit(CantSelectDayState());
  }

  cantSelectThisDay(CantSeclectThisDayEvent event, Emitter<BaseState> emit) async {
    Fluttertoast.showToast(
      msg: "You cannot choose holiday or day off",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
    emit(CantSelectDayState());
  }

  onFormatChange(FormatChangeEvent event, Emitter<BaseState> emit) async {
    format = event._format!;
    emit(FormatChangeState());
  }

  onDayPredicate(DayPredicateEvent event, Emitter<BaseState> emit) async {
    isSameDay(selectedDay, event.date);
    emit(DayPredicateState());
  }

  getSetting(GetSettingEvent evet, Emitter<BaseState> emit) async {
    try{
      emit(StartCallApiState());
      final response = await dailyCheckInRepository.getSetting();
      if(response == null){
        print("Error : data is null");
      } else {
        response.data?.forEach((e){
          if(e != null) {
            listSetting.add(e);
          }
        });
      }
    } on DioError catch (e) {
      emit(ApiErrorState(error: e));
    }
  }


  getTimeKeeping(GetDataTimeKeepingEvent event, Emitter<BaseState> emit) async {
    String tempDate;
    try{
      emit(StartCallApiState());
          final response = await dailyCheckInRepository.getCalendar();
          print(response);
          if (response == null){
            print("Error : data is null");
          } else {
            response.data as OTimekeepingCalendar;
            calendarTimekeeping = response.data;

            if(response.data?.checkin != null) {
              response.data?.checkin?.forEach((p0) {
                tempDate = p0.toString();
                listCheckin.add(CheckinDay(
                    tempDate.convertStringToDateTime("dd-MM-yyyy 00:00:00"),
                    "CHECKIN"));
              });
            }

            if(response.data?.dayOff != null){
              response.data?.dayOff?.forEach((p0) {
                tempDate = p0.toString();
                listCheckin.add(CheckinDay(tempDate.convertStringToDateTime("dd-MM-yyyy 00:00:00"), "DAYOFF"));
              });
            }

            if(response.data?.halfDayOff != null){
              response.data?.halfDayOff?.forEach((p0) {
                tempDate = p0.toString();
                listCheckin.add(CheckinDay(tempDate.convertStringToDateTime("dd-MM-yyyy 00:00:00"), "HALFDAYOFF"));
              });
            }

            emit(GetDataTimeKeepingState());
          }
    }
    on DioError catch (e) {
      emit(ApiErrorState(error: e));
    }
  }



  @override
  Stream<CheckinState> mapEventToState(
      CheckinEvent event,
      ) async* {
    // TODO: implement mapEventToState
  }
  fakeDataCheckinDay(){

  }

}
class CheckinDay{
  DateTime notcheckinDay;
  String? title;
  CheckinDay(this.notcheckinDay, this.title);
}

class EventSetting {
  EventStatus status;
  EventSetting(this.status);
}