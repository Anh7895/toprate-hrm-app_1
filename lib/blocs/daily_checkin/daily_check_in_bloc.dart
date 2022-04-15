import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/datasource/data/model/entity/check_in_model.dart';
import 'package:toprate_hrm/datasource/data/model/entity/get_check_in_model.dart';
import 'package:toprate_hrm/datasource/data/model/entity/project_data.dart';
import 'package:toprate_hrm/datasource/data/model/entity/time_subject.dart';

part 'daily_check_in_event.dart';

part 'daily_check_in_state.dart';

class DailyCheckInBloc extends Bloc<DailyCheckInEvent, BaseState> {
  DailyCheckInBloc() : super(DailyCheckInInitial()) {
    on<DailyCheckInEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<InitDataEvent>((event, emit) => initData(event, emit));
    on<BackDayEvent>((event, emit) => backDay(event, emit));
    on<NextDayEvent>((event, emit) => nextDay(event, emit));
    on<SelectProjectEvent>((event, emit) => selectProject(event, emit));
    on<FillNameProjectEvent>((event, emit) => fillNameProject(event, emit));
  }

  List<TimeSubject> listTimeSubject = [];
  List<ProjectData> listData = [];
  DateTime dateTime = DateTime.now();
  DateTime dateToday = DateTime.now();
  bool isShowDialog = false;
  bool isCanGoToNextDay = false;
  String time = "";
  String nameProject = "";
  bool isSelect = false;
  int? selectedIndex;
  int? intSelectData;
  List<CheckInModel> listCheckInModel = [];
  List<GetCheckInModel> listGetCheckInModel = [];

  addData() {
    listData.add(ProjectData(stringProject: "SIS - School Information"));
    listData.add(ProjectData(stringProject: "MyTel - Web portal 1"));
    listData.add(ProjectData(stringProject: "Vas - Smart Motor"));
    listData.add(ProjectData(stringProject: "Codoox - EU customer"));
    listData.add(ProjectData(stringProject: "Free Time"));
  }

  dataFake() {
    listTimeSubject.add(TimeSubject(
        name: "Select your project",
        nameTaskSelect: "SIS-elearning",
        isSelected: false,
        color: "ff9b90",
        extraTime: false,
        projectData: listData));
    listTimeSubject.add(TimeSubject(
        name: "Select your project",
        nameTaskSelect: "SIS-elearning",
        isSelected: false,
        color: "ff9b90",
        extraTime: false,
        projectData: listData));
    listTimeSubject.add(TimeSubject(
        name: "Select your project",
        nameTaskSelect: "Mytel Portal",
        isSelected: false,
        color: "4C5980",
        extraTime: false,
        projectData: listData));
    listTimeSubject.add(TimeSubject(
        name: "Select your project",
        nameTaskSelect: "",
        isSelected: false,
        color: "4C5980",
        extraTime: false,
        projectData: listData));
    listTimeSubject.add(TimeSubject(
        name: "Extra Time (2h)",
        nameTaskSelect: "",
        isSelected: false,
        color: "4C5980",
        extraTime: true,
        projectData: listData));
    listTimeSubject.add(TimeSubject(
        name: "Extra Time (2h)",
        nameTaskSelect: "",
        isSelected: false,
        color: "4C5980",
        extraTime: true,
        projectData: listData));
  }

  initData(InitDataEvent event,  Emitter<BaseState> emit) async {
    time =
        "${DateFormat('EE').format(dateTime)} ${DateFormat('d MMMM').format(dateTime)}";
    dataFake();
    addData();
    emit(InitDataState());
  }

  backDay(BackDayEvent event,  Emitter<BaseState> emit) async {
    dateTime = DateTime(dateTime.year, dateTime.month, dateTime.day - 1);
    time =
        "${DateFormat('EE').format(dateTime)} ${DateFormat('d MMMM').format(dateTime)}";
    listTimeSubject.clear();
    dataFake();
    isCanGoToNextDay = true;
    emit(BackDayState());
  }

  nextDay(NextDayEvent event,  Emitter<BaseState> emit) async {
    final today = DateTime(dateToday.year, dateToday.month, dateToday.day);
    final aDate = DateTime(dateTime.year, dateTime.month, dateTime.day);
    if (today != aDate) {
      listTimeSubject.clear();
      dateTime = DateTime(dateTime.year, dateTime.month, dateTime.day + 1);
    }
    isCanGoToNextDay = dateTime == today ? false : true;
    time =
        "${DateFormat('EE').format(dateTime)} ${DateFormat('d MMMM').format(dateTime)}";
    listTimeSubject.clear();
    dataFake();
    isCanGoToNextDay = true;
    emit(NextDayState());
  }

  selectProject(SelectProjectEvent event,  Emitter<BaseState> emit) async {
    selectedIndex = event.indexSelect;
    intSelectData = event.indexSelect;
    print("Error: letter is null ${event.indexSelect}");
    emit(SelectProjectState());
  }

  fillNameProject(FillNameProjectEvent event, Emitter<BaseState> emit) async {
    listTimeSubject[event.index!].nameTaskSelect = event.nameProject;
    listTimeSubject[event.index!].isSelected =true;
    emit(FillNameProjectState());
  }

}
