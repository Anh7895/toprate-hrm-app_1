import 'package:bloc/bloc.dart';
import 'package:built_collection/src/list.dart';
import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/datasource/data/model/entity/enumMode.dart';
import 'package:toprate_hrm/datasource/data/model/entity/manager_mail_model.dart';
import 'package:toprate_hrm/datasource/repository/day_off_repository.dart';

import '../../common/resource/strings.dart';

part 'day_off_event.dart';

part 'day_off_state.dart';

class DayOffBloc extends Bloc<DayOffEvent, BaseState> {
  DayOffBloc(this.dayOffRepository) : super(DayOffInitial()) {
    on<DayOffEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<ClickCheckboxDurationEvent>(
        (event, emit) => clickCheckboxDuration(event, emit));
    on<SetSelectedFromDateEvent>(
        (event, emit) => onSelectedFromDate(event, emit));
    on<SetSelectedToDateEvent>((event, emit) => onSelectedToDate(event, emit));
    on<SelectMailApproverEvent>(
        (event, emit) => selectMailApprover(event, emit));
    on<RemovedMailEvent>((event, emit) => removedMail(event, emit));
    on<SearchMailEvent>((event, emit) => searchMail(event, emit));
    on<InitDataListMailEvent>((event, emit) => initDataListMail(event, emit));
    on<SetReasonEvent>((event, emit) => setReason(event, emit));
    on<AddListEmailApproversEvent>(
        (event, emit) => addListEmailApprovers(event, emit));
    on<GetListEmailApproversEvent>(
        (event, emit) => getListEmailApprovers(event, emit));

    on<GetReasonEvent>((event, emit) => getReason(event, emit));
    on<ValidateDayOffEvent>((event, emit) => validateDayOff(event, emit));
    on<SubmitDayOffEvent>((event, emit) => submitDayOff(event, emit));
    on<ClickCheckboxTimeOffEvent>(
        (event, emit) => clickCheckboxTimeOff(event, emit));
  }

  var fromController = TextEditingController();
  var toController = TextEditingController();
  var searchController = new TextEditingController();
  var textDescriptionController = TextEditingController();
  var selectedFromDate =
      DateFormat("dd/MM/yyyy 00:00:00").format(DateTime.now());
  var selectedToDate = DateFormat("dd/MM/yyyy 00:00:00").format(DateTime.now());
  Mode character = Mode.OneDay;
  TimeOff timeOff = TimeOff.Allday;
  var isDayOffOneDay = true;
  ReasonSettings? defaultReason;
  var reasons = [];
  List<String> listChip = ["BOD", "nghiphep@toprate.io"];
  DateTime dateTime = DateTime.now();
  DateTime selectedDate = DateTime.now();
  FocusNode focusDescription = FocusNode();
  ScrollController scroll = new ScrollController();
  final DayOffRepository dayOffRepository;
  List<EmailSettings> listEmailSettings = [];
  List<ManagerMailModel> listUserProject = [];
  List<ManagerMailModel> searchList = [];
  List<ReasonSettings> listReasonSettings = [];

  setReason(SetReasonEvent event, Emitter<BaseState> emit) async {
    this.defaultReason = event.reason!;
    emit(SetReasonSuccessState());
  }

  removedMail(RemovedMailEvent event, Emitter<BaseState> emit) async {
    int userProjectIndex = listUserProject.indexWhere((element) =>
        element.userProject?.user?.email ==
        listEmailSettings[event.index].email);
    if (userProjectIndex != -1) {
      listUserProject[userProjectIndex].isChecked = false;
    }
    print("userProjectIndex $userProjectIndex");
    listEmailSettings.removeAt(event.index);
    emit(RemovedMailState());
  }

  searchMail(SearchMailEvent event, Emitter<BaseState> emit) async {
    searchList.clear();
    searchList.addAll(listUserProject
        .where((element) =>
            element.userProject?.user?.email!.contains(event.value!) ?? false)
        .toList());
    print("searchMail ${searchList.length}");
    emit(SearchMailState());
  }

  clickCheckboxDuration(
      ClickCheckboxDurationEvent event, Emitter<BaseState> emit) async {
    if (event.isSelect == true) {
      isDayOffOneDay = true;
    } else {
      isDayOffOneDay = false;
    }
    character = event.value!;
    emit(ClickCheckboxDurationState());
  }

  clickCheckboxTimeOff(
      ClickCheckboxTimeOffEvent event, Emitter<BaseState> emit) async {
    timeOff = event.value!;
    emit(ClickCheckboxTimeOffState());
  }

  onSelectedFromDate(
      SetSelectedFromDateEvent event, Emitter<BaseState> emit) async {
    fromController.text =
        event.setSelectedFromDate!.substring(0, 10).replaceAll("-", "/");
    selectedFromDate = event.setSelectedFromDate!;
    emit(SetSelectedFromDateState());
  }

  onSelectedToDate(
      SetSelectedToDateEvent event, Emitter<BaseState> emit) async {
    toController.text =
        event.setSelectedToDate!.substring(0, 10).replaceAll("-", "/");
    selectedToDate = event.setSelectedToDate!;
    emit(SetSelectedToDateState());
  }

  initDataListMail(InitDataListMailEvent event, Emitter<BaseState> emit) async {
    searchList.clear();
    searchList.addAll(listUserProject);
    emit(InitDataListMailState());
  }

  selectMailApprover(
      SelectMailApproverEvent event, Emitter<BaseState> emit) async {
    listUserProject[event.index!].isChecked =
        !listUserProject[event.index!].isChecked;
    emit(SelectMailApproverState());
  }

  addListEmailApprovers(
      AddListEmailApproversEvent event, Emitter<BaseState> emit) async {
    listEmailSettings.removeWhere((element) => element.id == null);
    listEmailSettings.addAll(event.emailSettings ?? []);
    emit(SelectMailApproverState());
  }

  getListEmailApprovers(
      GetListEmailApproversEvent event, Emitter<BaseState> emit) async {
    try {
      emit(StartCallApiState());
      final response = await dayOffRepository.getEmailApprovers();
      if (response.data == null) {
        print("Error: data is null");
      } else {
        listEmailSettings.addAll(response.data?.emailDefaults ?? []);
        listUserProject.addAll(response.data?.emailProjects
                ?.map((p0) => ManagerMailModel(userProject: p0))
                .toList() ??
            []);

        searchList.addAll(listUserProject);
        print("listEmailSettings ${listEmailSettings}");
        print("listUserProject ${listUserProject}");
        emit(GetListEmailApproversState());
      }
    } on DioError catch (e) {
      emit(ApiErrorState(error: e));
    }
  }

  getReason(GetReasonEvent event, Emitter<BaseState> emit) async {
    try {
      emit(StartCallApiState());
      final response = await dayOffRepository.getReason();
      if (response.data == null) {
        print("Error: data is null");
      } else {
        listReasonSettings.addAll(response.data ?? []);
        print("listReasonSettings ${listReasonSettings}");
        emit(GetReasonState());
      }
    } on DioError catch (e) {
      emit(ApiErrorState(error: e));
    }
  }

  void validateDayOff(ValidateDayOffEvent event, Emitter<BaseState> emit) {
    DateTime fromDateTime =
        new DateFormat("dd/MM/yyyy HH:mm").parse(selectedFromDate, true);
    DateTime toDateTime =
        new DateFormat("dd/MM/yyyy HH:mm").parse(selectedToDate, true);

    if (fromDateTime.compareTo(toDateTime) == -1) {
      emit(ValidateDayOffState(false,
          message: 'The last break must be greater than the start time.'));
      return;
    }
    if (defaultReason?.content == null) {
      emit(ValidateDayOffState(false, message: 'You did not choose a reason.'));
      return;
    }
    add(SubmitDayOffEvent(iFurloughLetters: iFurloughLettersBuilder()));
  }

  submitDayOff(SubmitDayOffEvent event, Emitter<BaseState> emit) async {
    try {
      emit(StartCallApiState());
      final response =
          await dayOffRepository.addFurloughLetters(event.iFurloughLetters);
      if (response.data == null) {
        print("Error: data is null");
      } else {
        print("Call api success");
        emit(showAlertBottomSheetDialogState());
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        if (e.response?.data['messages'] != null) {
          if (e.response?.data['messages']["data.0.project_id"] != null) {
            emit(ApiErrorState(
                error: e,
                errorMessage: e.response?.data['messages']["data.0.project_id"]
                    .toString()));
            return;
          }
        }
        if (e.response?.data['data.0.coefficient_pay_id'] != null) {
          if (e.response?.data['messages']["data.0.coefficient_pay_id"] !=
              null) {
            emit(ApiErrorState(
                error: e,
                errorMessage: e
                    .response?.data['messages']["data.0.coefficient_pay_id"]
                    .toString()));
            return;
          }
        }
      }
      emit(ApiErrorState(error: e, errorMessage: e.response?.data['message']));
    } catch (e) {
      emit(ApiErrorState(errorMessage: TextConstants.text101Err));
    }
  }

  IFurloughLetters iFurloughLettersBuilder() {
    String? dayType;
    String? timeType;
    switch (character) {
      case Mode.OneDay:
        {
          dayType = "day";
        }
        break;
      case Mode.ManyDay:
        {
          dayType = "many_days";
        }
        break;
      default:
        {
          dayType = "day";
        }
        break;
    }

    switch (timeOff) {
      case TimeOff.Allday:
        {
          timeType = "all_day";
        }
        break;
      case TimeOff.Morning:
        {
          timeType = "morning";
        }
        break;

      case TimeOff.Afternoon:
        {
          timeType = "afternoon";
        }
        break;
      default:
        {
          timeType = "all_day";
        }
        break;
    }
    var builder = IFurloughLettersBuilder();
    builder.duration = dayType;
    builder.type = timeType;
    builder.startDate = selectedFromDate;
    builder.endDate = selectedToDate;
    builder.reason = defaultReason?.content;
    builder.content = textDescriptionController.text;
    ListBuilder<JsonObject?> build = ListBuilder();
    listEmailSettings.forEach((e) {
      if (e.email != null) {
        build.add(JsonObject(e.email));
      }
    });
    builder.approvers = build;
    print("IFurloughLettersBuilder ${builder.build()}");
    return builder.build();
  }
}
