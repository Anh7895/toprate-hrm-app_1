import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/datasource/data/model/entity/project_data.dart';
import 'package:toprate_hrm/datasource/repository/daily_checkin_repository.dart';

part 'daily_check_in_event.dart';
part 'daily_check_in_state.dart';

class DailyCheckInBloc extends Bloc<DailyCheckInEvent, BaseState> {
  DailyCheckInBloc(this.dailyCheckInRepository) : super(DailyCheckInInitial()) {
    on<DailyCheckInEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<InitDataEvent>((event, emit) => initData(event, emit));
    on<BackDayEvent>((event, emit) => backDay(event, emit));
    on<NextDayEvent>((event, emit) => nextDay(event, emit));
    on<RemoveProjectEvent>((event, emit) => removeProject(event, emit));
    on<SelectProjectEvent>((event, emit) => selectProject(event, emit));
    on<FillNameProjectEvent>((event, emit) => fillNameProject(event, emit));
    on<ClickSubmitEvent>((event, emit) => clickSubmit(event, emit));
    on<GetAllSettingBlockEvent>(
        (event, emit) => getAllSettingBlock(event, emit));
    on<GetAllProjectEvent>((event, emit) => getAllProject(event, emit));
    on<CheckInEvent>((event, emit) => checkIn(event, emit));
  }

  List<ProjectData> listProjectData = [];
  DateTime dateTime = DateTime.now();
  DateTime dateToday = DateTime.now();
  bool isShowDialog = false;
  bool isCanGoToNextDay = false;
  String time = "";
  int numberBloc = 0;
  int? selectedIndex;
  int? intSelectData;
  List<SettingBlock> listSettingBloc = [];
  List<CoefficientPay> listCoefficientPay = [];
  List<Project> listProject = [];
  final DailyCheckInRepository dailyCheckInRepository;

  initData(InitDataEvent event, Emitter<BaseState> emit) async {
    time =
        "${DateFormat('EE').format(dateTime)} ${DateFormat('d MMMM').format(dateTime)}";
    emit(InitDataState());
  }

  backDay(BackDayEvent event, Emitter<BaseState> emit) async {
    dateTime = DateTime(dateTime.year, dateTime.month, dateTime.day - 1);
    time =
        "${DateFormat('EE').format(dateTime)} ${DateFormat('d MMMM').format(dateTime)}";
    isCanGoToNextDay = true;
    emit(BackDayState());
  }

  nextDay(NextDayEvent event, Emitter<BaseState> emit) async {
    final today = DateTime(dateToday.year, dateToday.month, dateToday.day);
    final aDate = DateTime(dateTime.year, dateTime.month, dateTime.day);
    if (today != aDate) {
      dateTime = DateTime(dateTime.year, dateTime.month, dateTime.day + 1);
    }
    isCanGoToNextDay = dateTime == today ? false : true;
    time =
        "${DateFormat('EE').format(dateTime)} ${DateFormat('d MMMM').format(dateTime)}";
    isCanGoToNextDay = true;
    emit(NextDayState());
  }

  selectProject(SelectProjectEvent event, Emitter<BaseState> emit) async {
    selectedIndex = event.indexSelect;
    intSelectData = event.indexSelect;
    print("Error: letter is null ${event.indexSelect}");
    emit(SelectProjectState());
  }

  fillNameProject(FillNameProjectEvent event, Emitter<BaseState> emit) async {
    listProjectData[event.index!].stringNameSelectProject = event.nameProject;
    listProjectData[event.index!].projectId = event.projectId;
    listProjectData[event.index!].avatar = event.avatar;
    listProjectData[event.index!].color = event.color;
    selectedIndex = -1;
    emit(FillNameProjectState());
  }

  removeProject(RemoveProjectEvent event, Emitter<BaseState> emit) async {
    listProjectData[event.indexSelect!].stringNameSelectProject =
        listProjectData[event.indexSelect!].stringNameDefault;
    listProjectData[event.indexSelect!].projectId = null;
    selectedIndex = -1;
    emit(RemoveProjectState());
  }

  getAllSettingBlock(
      GetAllSettingBlockEvent event, Emitter<BaseState> emit) async {
    try {
      emit(StartCallApiState());
      final response = await dailyCheckInRepository.getAllSettingBlock();
      if (response == null) {
        print("Error: data is null");
      } else {
        final listModel = response?['data']
            .map<SettingBlock>((e) =>
                standardSerializers.deserializeWith<SettingBlock>(
                    SettingBlock.serializer, e) ??
                SettingBlock())
            .toList();
        listSettingBloc.addAll(listModel);

        for (int i = 0; i < listSettingBloc.length; i++) {
          numberBloc = int.parse(listSettingBloc[i].number ?? "");
          for (int t = 0; t < numberBloc; t++) {
            listProjectData.add(ProjectData(
                stringNameDefault: listSettingBloc[i].placeholder!,
                stringNameSelectProject: null,
                coefficientPayId: listSettingBloc[i].coefficientPayId,
                time: listSettingBloc[i].time,
                projectId: null));
          }
        }
        emit(GetAllSettingBlockState());
      }
    } on DioError catch (e) {
      emit(ApiErrorState(error: e));
    }
  }

  getAllProject(GetAllProjectEvent event, Emitter<BaseState> emit) async {
    try {
      emit(StartCallApiState());
      final response = await dailyCheckInRepository.getAllProject();
      if (response == null) {
        print("Error: data is null");
      } else {
        final listModel = response?['data']
            .map<Project>((e) =>
                standardSerializers.deserializeWith<Project>(
                    Project.serializer, e) ??
                Project())
            .toList();
        listProject.addAll(listModel);
        print("getListProject $response");
        emit(GetAllProjectState());
      }
    } on DioError catch (e) {
      emit(ApiErrorState(error: e));
    }
  }

  clickSubmit(ClickSubmitEvent event, Emitter<BaseState> emit) async {
    add(CheckInEvent(checkIn: buildCheckIn()));
    emit(ClickSubmitState());
  }

  checkIn(CheckInEvent event, Emitter<BaseState> emit) async {
    try {
      emit(StartCallApiState());
      final response = await dailyCheckInRepository.checkIn(event.checkIn!);
      if (response.data == null) {
        print("Error: letter is null");
      } else {
        emit(showAlertBottomSheetDialogState());
      }
    } on DioError catch (e) {
      List<String> err = [];
      print("Res ${e.response?.statusCode}");
      if (e.response?.statusCode == 400) {
        if (e.response?.data['data.0.project_id'] != null) {
          if (e.response?.data['messages']['data.0.project_id'] != null) {
            err = List<String>.from(e.response?.data['messages']['data.0.project_id']);
          }
        }
        if (e.response?.data['data.0.coefficient_pay_id'] != null) {
          if (e.response?.data['messages']['data.0.coefficient_pay_id'] != null) {
            err = List<String>.from(e.response?.data['messages']['data.0.coefficient_pay_id']);
          }
        }
      }
      emit(ApiErrorState(
          error: e,
          errorMessage: e.response?.data['message'] ?? err.toString()));
    } catch (e) {
      print(e);
      emit(ApiErrorState(error: e));
    }
  }

  CheckIn buildCheckIn() {
    var builder = CheckInBuilder();
    List<CheckInData> data = [];
    listProjectData.forEach((e) {
      if (e.projectId != null && e.coefficientPayId != null &&
          e.time != null && e.avatar != null && e.color != null) {
        CheckInDataBuilder checkInDataBuilder = CheckInDataBuilder();
        checkInDataBuilder.projectId = e.projectId;
        checkInDataBuilder.coefficientPayId = e.coefficientPayId;
        checkInDataBuilder.time = e.time;
        // checkInDataBuilder.avatar = e.avatar;
        // checkInDataBuilder.color = e.color;
        data.add(checkInDataBuilder.build());
      }
    });
    builder.data = BuiltList<CheckInData>.from(data).toBuilder();
    return builder.build();
  }
}
