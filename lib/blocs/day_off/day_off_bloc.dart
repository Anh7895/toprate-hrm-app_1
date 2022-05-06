import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/datasource/data/model/entity/enumMode.dart';
import 'package:toprate_hrm/datasource/data/model/entity/list_mail_model.dart';
import 'package:toprate_hrm/datasource/data/model/entity/manager_mail_model.dart';

part 'day_off_event.dart';
part 'day_off_state.dart';

class DayOffBloc extends Bloc<DayOffEvent, BaseState> {
  DayOffBloc() : super(DayOffInitial()) {
    on<DayOffEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<ClickCheckboxDurationEvent>(
        (event, emit) => clickCheckboxDuration(event, emit));
    on<SetSelectedFromDateEvent>(
        (event, emit) => onSelectedFromDate(event, emit));
    on<SetSelectedToDateEvent>((event, emit) => onSelectedToDate(event, emit));
    on<AddMailApproverEvent>((event, emit) => addMailApprover(event, emit));
    on<RemovedMailEvent>((event, emit) => removedMail(event, emit));
    on<SearchMailEvent>((event, emit) => searchMail(event, emit));
    on<InitDataListMailEvent>((event, emit) => initDataListMail(event, emit));
    on<SetReasonEvent>((event, emit) => setReason(event, emit));
    on<ClickCheckboxTimeOffEvent>(
        (event, emit) => clickCheckboxTimeOff(event, emit));
  }

  var fromController = TextEditingController();
  var toController = TextEditingController();
  var searchController = new TextEditingController();
  var selectedFromDate;
  var selectedToDate;
  Mode character = Mode.OneDay;
  TimeOff timeOff = TimeOff.Allday;
  var isDayOffOneDay = true;
  var defaultReason = "Choose reasons";
  var reasons = ["Choose reasons","One", "Two", "Three", "Four"];
  var listResult = [];
  String selectedDOB = "";
  bool? isChecked = false;
  int? selectIndex;
  List<String>  listChip = ["BOD","nghiphep@toprate.io"];
  DateTime dateTime = DateTime.now();
  DateTime selectedDate = DateTime.now();
  TextEditingController textDescriptionController = TextEditingController();
  FocusNode focusDescription = FocusNode();

  List<ManagerMailModel> managerMail = [
    ManagerMailModel(
        mail: "nghiphep@toprate.io",
        isChecked: true,
        name: "BOD",
        canRemove: false),
    ManagerMailModel(
        mail: "nghiphep@toprate.io", isChecked: true, canRemove: false),
    ManagerMailModel(mail: "dung@toprate.io"),
    ManagerMailModel(mail: "tuan@toprate.io"),
    ManagerMailModel(mail: "giangvt@toprate.io"),
    ManagerMailModel(mail: "vietvk@toprate.io"),
    ManagerMailModel(mail: "hanhnv@toprate.io"),
    ManagerMailModel(mail: "long@toprate.io"),
    ManagerMailModel(mail: "long@toprate.io"),
    ManagerMailModel(mail: "long@toprate.io"),
  ];


  setTimeOff(TimeOff timeOff) {
    timeOff = timeOff;
  }

  setReason(SetReasonEvent event,Emitter<BaseState> emit)async {
    this.defaultReason = event.reason!;
    emit(SetReasonSuccessState());
  }

  removedMail(RemovedMailEvent event, Emitter<BaseState> emit) async {
    managerMail[event.index!].isChecked = event.isChecked!;
    managerMail;
    emit(RemovedMailState());
  }

  searchMail(SearchMailEvent event, Emitter<BaseState> emit) async {
    listResult.clear();
    listResult = managerMail
        .where((element) => element.mail!.contains(event.value!))
        .toList();
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
    fromController.text = event.setSelectedFromDate!;
    emit(SetSelectedFromDateState());
  }

  onSelectedToDate(
      SetSelectedToDateEvent event, Emitter<BaseState> emit) async {
    toController.text = event.setSelectedToDate!;
    emit(SetSelectedToDateState());
  }

  initDataListMail(
      InitDataListMailEvent event, Emitter<BaseState> emit) async {
    listResult.clear();
    listResult.addAll(managerMail);
    emit(InitDataListMailState());
  }

  addMailApprover(AddMailApproverEvent event, Emitter<BaseState> emit) async {
    listResult[event.index!].isChecked = !listResult[event.index!].isChecked;
    managerMail[event.index!].isChecked = managerMail[event.index!].isChecked;
    emit(AddMailApproverState());
  }
}
